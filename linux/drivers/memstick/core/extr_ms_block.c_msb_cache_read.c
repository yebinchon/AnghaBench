
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct msb_data {int* lba_to_pba_table; int cache_block_lba; int page_size; scalar_t__ cache; int valid_cache_bitmap; } ;


 int ARRAY_SIZE (struct scatterlist*) ;
 int dbg_verbose (char*,int,int,int) ;
 int msb_cache_write (struct msb_data*,int,int,int,struct scatterlist*,int) ;
 int msb_read_page (struct msb_data*,int,int,int *,struct scatterlist*,int) ;
 int msb_sg_copy (struct scatterlist*,struct scatterlist*,int ,int,int) ;
 int sg_copy_from_buffer (struct scatterlist*,int ,scalar_t__,int) ;
 int sg_init_table (struct scatterlist*,int ) ;
 int sg_nents (struct scatterlist*) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static int msb_cache_read(struct msb_data *msb, int lba,
    int page, struct scatterlist *sg, int offset)
{
 int pba = msb->lba_to_pba_table[lba];
 struct scatterlist sg_tmp[10];
 int error = 0;

 if (lba == msb->cache_block_lba &&
   test_bit(page, &msb->valid_cache_bitmap)) {

  dbg_verbose("Read of LBA %d (pba %d) sector %d from cache",
       lba, pba, page);

  sg_init_table(sg_tmp, ARRAY_SIZE(sg_tmp));
  msb_sg_copy(sg, sg_tmp, ARRAY_SIZE(sg_tmp),
   offset, msb->page_size);
  sg_copy_from_buffer(sg_tmp, sg_nents(sg_tmp),
   msb->cache + msb->page_size * page,
       msb->page_size);
 } else {
  dbg_verbose("Read of LBA %d (pba %d) sector %d from device",
       lba, pba, page);

  error = msb_read_page(msb, pba, page, ((void*)0), sg, offset);
  if (error)
   return error;

  msb_cache_write(msb, lba, page, 1, sg, offset);
 }
 return error;
}
