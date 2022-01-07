
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {struct map_info* priv; } ;
struct map_info {struct cfi_private* fldrv_priv; } ;
struct cfi_private {int numchips; int * chips; } ;
typedef int loff_t ;


 int do_read_secsi_onechip (struct map_info*,int *,unsigned long,unsigned long,int *,int ) ;

__attribute__((used)) static int cfi_amdstd_secsi_read (struct mtd_info *mtd, loff_t from, size_t len, size_t *retlen, u_char *buf)
{
 struct map_info *map = mtd->priv;
 struct cfi_private *cfi = map->fldrv_priv;
 unsigned long ofs;
 int chipnum;
 int ret = 0;



 chipnum=from>>3;
 ofs=from & 7;

 while (len) {
  unsigned long thislen;

  if (chipnum >= cfi->numchips)
   break;

  if ((len + ofs -1) >> 3)
   thislen = (1<<3) - ofs;
  else
   thislen = len;

  ret = do_read_secsi_onechip(map, &cfi->chips[chipnum], ofs,
         thislen, buf, 0);
  if (ret)
   break;

  *retlen += thislen;
  len -= thislen;
  buf += thislen;

  ofs = 0;
  chipnum++;
 }
 return ret;
}
