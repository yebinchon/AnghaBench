
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scatterlist {int dummy; } ;
struct msb_data {int cache_block_lba; int page_size; int valid_cache_bitmap; scalar_t__ cache; int cache_flush_timer; scalar_t__ read_only; } ;


 int ARRAY_SIZE (struct scatterlist*) ;
 int EROFS ;
 int MS_BLOCK_INVALID ;
 int cache_flush_timeout ;
 int dbg_verbose (char*,...) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int msb_cache_flush (struct msb_data*) ;
 int msb_sg_copy (struct scatterlist*,struct scatterlist*,int ,int,int) ;
 scalar_t__ msecs_to_jiffies (int ) ;
 int set_bit (int,int *) ;
 int sg_copy_to_buffer (struct scatterlist*,int ,scalar_t__,int) ;
 int sg_init_table (struct scatterlist*,int ) ;
 int sg_nents (struct scatterlist*) ;

__attribute__((used)) static int msb_cache_write(struct msb_data *msb, int lba,
 int page, bool add_to_cache_only, struct scatterlist *sg, int offset)
{
 int error;
 struct scatterlist sg_tmp[10];

 if (msb->read_only)
  return -EROFS;

 if (msb->cache_block_lba == MS_BLOCK_INVALID ||
      lba != msb->cache_block_lba)
  if (add_to_cache_only)
   return 0;


 if (msb->cache_block_lba != MS_BLOCK_INVALID &&
      lba != msb->cache_block_lba) {
  dbg_verbose("first flush the cache");
  error = msb_cache_flush(msb);
  if (error)
   return error;
 }

 if (msb->cache_block_lba == MS_BLOCK_INVALID) {
  msb->cache_block_lba = lba;
  mod_timer(&msb->cache_flush_timer,
   jiffies + msecs_to_jiffies(cache_flush_timeout));
 }

 dbg_verbose("Write of LBA %d page %d to cache ", lba, page);

 sg_init_table(sg_tmp, ARRAY_SIZE(sg_tmp));
 msb_sg_copy(sg, sg_tmp, ARRAY_SIZE(sg_tmp), offset, msb->page_size);

 sg_copy_to_buffer(sg_tmp, sg_nents(sg_tmp),
  msb->cache + page * msb->page_size, msb->page_size);

 set_bit(page, &msb->valid_cache_bitmap);
 return 0;
}
