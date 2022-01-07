
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u32 ;
struct nand_chip {int dummy; } ;
struct davinci_nand_info {scalar_t__ is_readmode; } ;


 int NAND_4BIT_ECC1_OFFSET ;
 int davinci_nand_readl (struct davinci_nand_info*,int ) ;
 int nand_davinci_readecc_4bit (struct davinci_nand_info*,int*) ;
 int nand_to_mtd (struct nand_chip*) ;
 struct davinci_nand_info* to_davinci_nand (int ) ;

__attribute__((used)) static int nand_davinci_calculate_4bit(struct nand_chip *chip,
           const u_char *dat, u_char *ecc_code)
{
 struct davinci_nand_info *info = to_davinci_nand(nand_to_mtd(chip));
 u32 raw_ecc[4], *p;
 unsigned i;






 if (info->is_readmode) {
  davinci_nand_readl(info, NAND_4BIT_ECC1_OFFSET);
  return 0;
 }






 nand_davinci_readecc_4bit(info, raw_ecc);
 for (i = 0, p = raw_ecc; i < 2; i++, p += 2) {
  *ecc_code++ = p[0] & 0xff;
  *ecc_code++ = ((p[0] >> 8) & 0x03) | ((p[0] >> 14) & 0xfc);
  *ecc_code++ = ((p[0] >> 22) & 0x0f) | ((p[1] << 4) & 0xf0);
  *ecc_code++ = ((p[1] >> 4) & 0x3f) | ((p[1] >> 10) & 0xc0);
  *ecc_code++ = (p[1] >> 18) & 0xff;
 }

 return 0;
}
