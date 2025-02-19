
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;


 int __nand_correct_data (unsigned char*,unsigned char*,unsigned char*,int,int) ;

__attribute__((used)) static int tmio_nand_correct_data(struct nand_chip *chip, unsigned char *buf,
      unsigned char *read_ecc,
      unsigned char *calc_ecc)
{
 int r0, r1;


 r0 = __nand_correct_data(buf, read_ecc, calc_ecc, 256, 0);
 if (r0 < 0)
  return r0;
 r1 = __nand_correct_data(buf + 256, read_ecc + 3, calc_ecc + 3, 256,
     0);
 if (r1 < 0)
  return r1;
 return r0 + r1;
}
