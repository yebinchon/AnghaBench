
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct scatterlist {int dummy; } ;
struct msb_data {size_t cache_block_lba; size_t* lba_to_pba_table; int pages_in_block; int page_size; int valid_cache_bitmap; int block_size; int cache; scalar_t__ read_only; } ;
struct ms_extra_data_register {int overwrite_flag; } ;


 int EBADMSG ;
 int EROFS ;
 int MEMSTICK_OV_PG_NORMAL ;
 size_t MS_BLOCK_INVALID ;
 int dbg (char*,int) ;
 int dbg_verbose (char*,int,size_t) ;
 int msb_cache_discard (struct msb_data*) ;
 int msb_read_page (struct msb_data*,size_t,int,struct ms_extra_data_register*,struct scatterlist*,int) ;
 int msb_set_overwrite_flag (struct msb_data*,size_t,int,int) ;
 int msb_update_block (struct msb_data*,size_t,struct scatterlist*,int ) ;
 int pr_err (char*,int) ;
 int set_bit (int,int *) ;
 int sg_init_one (struct scatterlist*,int ,int ) ;
 scalar_t__ test_bit (int,int *) ;

__attribute__((used)) static int msb_cache_flush(struct msb_data *msb)
{
 struct scatterlist sg;
 struct ms_extra_data_register extra;
 int page, offset, error;
 u16 pba, lba;

 if (msb->read_only)
  return -EROFS;

 if (msb->cache_block_lba == MS_BLOCK_INVALID)
  return 0;

 lba = msb->cache_block_lba;
 pba = msb->lba_to_pba_table[lba];

 dbg_verbose("Flushing the write cache of pba %d (LBA %d)",
      pba, msb->cache_block_lba);

 sg_init_one(&sg, msb->cache , msb->block_size);


 for (page = 0; page < msb->pages_in_block; page++) {

  if (test_bit(page, &msb->valid_cache_bitmap))
   continue;

  offset = page * msb->page_size;

  dbg_verbose("reading non-present sector %d of cache block %d",
   page, lba);
  error = msb_read_page(msb, pba, page, &extra, &sg, offset);


  if (error == -EBADMSG) {
   pr_err("read error on sector %d, contents probably damaged", page);
   continue;
  }

  if (error)
   return error;

  if ((extra.overwrite_flag & MEMSTICK_OV_PG_NORMAL) !=
       MEMSTICK_OV_PG_NORMAL) {
   dbg("page %d is marked as bad", page);
   continue;
  }

  set_bit(page, &msb->valid_cache_bitmap);
 }


 error = msb_update_block(msb, msb->cache_block_lba, &sg, 0);
 pba = msb->lba_to_pba_table[msb->cache_block_lba];


 if (!error) {
  for (page = 0; page < msb->pages_in_block; page++) {

   if (test_bit(page, &msb->valid_cache_bitmap))
    continue;

   dbg("marking page %d as containing damaged data",
    page);
   msb_set_overwrite_flag(msb,
    pba , page, 0xFF & ~MEMSTICK_OV_PG_NORMAL);
  }
 }

 msb_cache_discard(msb);
 return error;
}
