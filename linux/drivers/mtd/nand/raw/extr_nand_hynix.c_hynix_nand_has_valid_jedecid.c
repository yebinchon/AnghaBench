
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct nand_chip {int dummy; } ;
typedef int jedecid ;


 int nand_readid_op (struct nand_chip*,int,int *,int) ;
 int strncmp (char*,int *,int) ;

__attribute__((used)) static bool hynix_nand_has_valid_jedecid(struct nand_chip *chip)
{
 u8 jedecid[5] = { };
 int ret;

 ret = nand_readid_op(chip, 0x40, jedecid, sizeof(jedecid));
 if (ret)
  return 0;

 return !strncmp("JEDEC", jedecid, sizeof(jedecid));
}
