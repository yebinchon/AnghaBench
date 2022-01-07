
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct mtd_info* mtd; } ;
struct mtdblk_dev {unsigned int cache_size; scalar_t__ cache_state; unsigned long cache_offset; scalar_t__ cache_data; TYPE_1__ mbd; } ;
struct mtd_info {int name; } ;


 int EIO ;
 scalar_t__ STATE_EMPTY ;
 int memcpy (char*,scalar_t__,unsigned int) ;
 int mtd_read (struct mtd_info*,unsigned long,unsigned int,size_t*,char*) ;
 int pr_debug (char*,int ,unsigned long,int) ;

__attribute__((used)) static int do_cached_read (struct mtdblk_dev *mtdblk, unsigned long pos,
      int len, char *buf)
{
 struct mtd_info *mtd = mtdblk->mbd.mtd;
 unsigned int sect_size = mtdblk->cache_size;
 size_t retlen;
 int ret;

 pr_debug("mtdblock: read on \"%s\" at 0x%lx, size 0x%x\n",
   mtd->name, pos, len);

 if (!sect_size)
  return mtd_read(mtd, pos, len, &retlen, buf);

 while (len > 0) {
  unsigned long sect_start = (pos/sect_size)*sect_size;
  unsigned int offset = pos - sect_start;
  unsigned int size = sect_size - offset;
  if (size > len)
   size = len;







  if (mtdblk->cache_state != STATE_EMPTY &&
      mtdblk->cache_offset == sect_start) {
   memcpy (buf, mtdblk->cache_data + offset, size);
  } else {
   ret = mtd_read(mtd, pos, size, &retlen, buf);
   if (ret)
    return ret;
   if (retlen != size)
    return -EIO;
  }

  buf += size;
  pos += size;
  len -= size;
 }

 return 0;
}
