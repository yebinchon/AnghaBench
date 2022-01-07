
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct mtd_info {int erasesize; struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {int interleave; int device_type; int chipshift; int numchips; int * chips; } ;
typedef int loff_t ;


 int EINVAL ;
 int cfi_read_query (struct map_info*,unsigned long) ;
 int cfi_send_gen_cmd (int,int,int ,struct map_info*,struct cfi_private*,int,int *) ;
 int do_lock_oneblock (struct map_info*,int *,unsigned long) ;
 int printk (char*,int ) ;

__attribute__((used)) static int cfi_staa_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 unsigned long adr;
 int chipnum, ret = 0;




 if (ofs & (mtd->erasesize - 1))
  return -EINVAL;

 if (len & (mtd->erasesize -1))
  return -EINVAL;

 chipnum = ofs >> cfi->chipshift;
 adr = ofs - (chipnum << cfi->chipshift);

 while(len) {







  ret = do_lock_oneblock(map, &cfi->chips[chipnum], adr);







  if (ret)
   return ret;

  adr += mtd->erasesize;
  len -= mtd->erasesize;

  if (adr >> cfi->chipshift) {
   adr = 0;
   chipnum++;

   if (chipnum >= cfi->numchips)
    break;
  }
 }
 return 0;
}
