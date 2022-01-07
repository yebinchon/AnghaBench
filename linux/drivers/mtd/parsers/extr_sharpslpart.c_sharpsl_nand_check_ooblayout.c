
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mtd_oob_region {int length; int offset; } ;
struct mtd_info {int dummy; } ;


 int BIT (int) ;
 int ENOTSUPP ;
 int mtd_ooblayout_free (struct mtd_info*,int ,struct mtd_oob_region*) ;

__attribute__((used)) static int sharpsl_nand_check_ooblayout(struct mtd_info *mtd)
{
 u8 freebytes = 0;
 int section = 0;

 while (1) {
  struct mtd_oob_region oobfree = { };
  int ret, i;

  ret = mtd_ooblayout_free(mtd, section++, &oobfree);
  if (ret)
   break;

  if (!oobfree.length || oobfree.offset > 15 ||
      (oobfree.offset + oobfree.length) < 8)
   continue;

  i = oobfree.offset >= 8 ? oobfree.offset : 8;
  for (; i < oobfree.offset + oobfree.length && i < 16; i++)
   freebytes |= BIT(i - 8);

  if (freebytes == 0xff)
   return 0;
 }

 return -ENOTSUPP;
}
