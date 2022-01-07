
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mtd_info* mtd; } ;
struct mtdblk_dev {scalar_t__ cache_state; int cache_data; int cache_size; int cache_offset; TYPE_1__ mbd; } ;
struct mtd_info {int name; } ;


 scalar_t__ STATE_DIRTY ;
 scalar_t__ STATE_EMPTY ;
 int erase_write (struct mtd_info*,int ,int ,int ) ;
 int pr_debug (char*,int ,int ,int ) ;

__attribute__((used)) static int write_cached_data (struct mtdblk_dev *mtdblk)
{
 struct mtd_info *mtd = mtdblk->mbd.mtd;
 int ret;

 if (mtdblk->cache_state != STATE_DIRTY)
  return 0;

 pr_debug("mtdblock: writing cached data for \"%s\" "
   "at 0x%lx, size 0x%x\n", mtd->name,
   mtdblk->cache_offset, mtdblk->cache_size);

 ret = erase_write (mtd, mtdblk->cache_offset,
      mtdblk->cache_size, mtdblk->cache_data);
 if (ret)
  return ret;
 mtdblk->cache_state = STATE_EMPTY;
 return 0;
}
