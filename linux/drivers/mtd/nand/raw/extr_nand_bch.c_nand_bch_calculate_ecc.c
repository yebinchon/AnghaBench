
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int bytes; int size; struct nand_bch_control* priv; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct nand_bch_control {unsigned char* eccmask; int bch; } ;


 int encode_bch (int ,unsigned char const*,int ,unsigned char*) ;
 int memset (unsigned char*,int ,unsigned int) ;

int nand_bch_calculate_ecc(struct nand_chip *chip, const unsigned char *buf,
      unsigned char *code)
{
 struct nand_bch_control *nbc = chip->ecc.priv;
 unsigned int i;

 memset(code, 0, chip->ecc.bytes);
 encode_bch(nbc->bch, buf, chip->ecc.size, code);


 for (i = 0; i < chip->ecc.bytes; i++)
  code[i] ^= nbc->eccmask[i];

 return 0;
}
