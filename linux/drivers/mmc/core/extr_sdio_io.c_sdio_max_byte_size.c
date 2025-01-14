
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sdio_func {unsigned int cur_blksize; unsigned int max_blksize; TYPE_2__* card; } ;
struct TYPE_5__ {TYPE_1__* host; } ;
struct TYPE_4__ {unsigned int max_blk_size; } ;


 unsigned int min (unsigned int,unsigned int) ;
 scalar_t__ mmc_blksz_for_byte_mode (TYPE_2__*) ;
 scalar_t__ mmc_card_broken_byte_mode_512 (TYPE_2__*) ;

__attribute__((used)) static inline unsigned int sdio_max_byte_size(struct sdio_func *func)
{
 unsigned mval = func->card->host->max_blk_size;

 if (mmc_blksz_for_byte_mode(func->card))
  mval = min(mval, func->cur_blksize);
 else
  mval = min(mval, func->max_blksize);

 if (mmc_card_broken_byte_mode_512(func->card))
  return min(mval, 511u);

 return min(mval, 512u);
}
