
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {struct bcm47xxsflash* priv; } ;
struct bcm47xxsflash {int type; } ;
typedef scalar_t__ loff_t ;




 int BUG_ON (int) ;
 int bcm47xxsflash_write_at (struct mtd_info*,scalar_t__,size_t,int const*) ;
 int bcm47xxsflash_write_st (struct mtd_info*,scalar_t__,size_t,int const*) ;
 int pr_err (char*,scalar_t__) ;

__attribute__((used)) static int bcm47xxsflash_write(struct mtd_info *mtd, loff_t to, size_t len,
          size_t *retlen, const u_char *buf)
{
 struct bcm47xxsflash *b47s = mtd->priv;
 int written;




 while (len > 0) {
  switch (b47s->type) {
  case 128:
   written = bcm47xxsflash_write_st(mtd, to, len, buf);
   break;
  case 129:
   written = bcm47xxsflash_write_at(mtd, to, len, buf);
   break;
  default:
   BUG_ON(1);
  }
  if (written < 0) {
   pr_err("Error writing at offset 0x%llX\n", to);
   return written;
  }
  to += (loff_t)written;
  len -= written;
  *retlen += written;
  buf += written;
 }

 return 0;
}
