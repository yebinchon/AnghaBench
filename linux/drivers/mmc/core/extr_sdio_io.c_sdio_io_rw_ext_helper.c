
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct sdio_func {int num; unsigned int cur_blksize; TYPE_3__* card; } ;
struct TYPE_4__ {scalar_t__ multi_block; } ;
struct TYPE_6__ {TYPE_2__* host; TYPE_1__ cccr; } ;
struct TYPE_5__ {unsigned int max_blk_count; } ;


 int EINVAL ;
 unsigned int min (unsigned int,unsigned int) ;
 int mmc_io_rw_extended (TYPE_3__*,int,int,unsigned int,int,int *,unsigned int,unsigned int) ;
 unsigned int sdio_max_byte_size (struct sdio_func*) ;

__attribute__((used)) static int sdio_io_rw_ext_helper(struct sdio_func *func, int write,
 unsigned addr, int incr_addr, u8 *buf, unsigned size)
{
 unsigned remainder = size;
 unsigned max_blocks;
 int ret;

 if (!func || (func->num > 7))
  return -EINVAL;


 if (func->card->cccr.multi_block && (size > sdio_max_byte_size(func))) {


  max_blocks = min(func->card->host->max_blk_count, 511u);

  while (remainder >= func->cur_blksize) {
   unsigned blocks;

   blocks = remainder / func->cur_blksize;
   if (blocks > max_blocks)
    blocks = max_blocks;
   size = blocks * func->cur_blksize;

   ret = mmc_io_rw_extended(func->card, write,
    func->num, addr, incr_addr, buf,
    blocks, func->cur_blksize);
   if (ret)
    return ret;

   remainder -= size;
   buf += size;
   if (incr_addr)
    addr += size;
  }
 }


 while (remainder > 0) {
  size = min(remainder, sdio_max_byte_size(func));


  ret = mmc_io_rw_extended(func->card, write, func->num, addr,
    incr_addr, buf, 0, size);
  if (ret)
   return ret;

  remainder -= size;
  buf += size;
  if (incr_addr)
   addr += size;
 }
 return 0;
}
