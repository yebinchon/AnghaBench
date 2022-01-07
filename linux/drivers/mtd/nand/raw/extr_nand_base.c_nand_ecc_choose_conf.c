
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nand_ecc_caps {int dummy; } ;
struct TYPE_2__ {int options; scalar_t__ strength; scalar_t__ size; } ;
struct nand_chip {TYPE_1__ ecc; } ;
struct mtd_info {int oobsize; } ;


 int EINVAL ;
 int NAND_ECC_MAXIMIZE ;
 scalar_t__ WARN_ON (int) ;
 int nand_check_ecc_caps (struct nand_chip*,struct nand_ecc_caps const*,int) ;
 int nand_match_ecc_req (struct nand_chip*,struct nand_ecc_caps const*,int) ;
 int nand_maximize_ecc (struct nand_chip*,struct nand_ecc_caps const*,int) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

int nand_ecc_choose_conf(struct nand_chip *chip,
    const struct nand_ecc_caps *caps, int oobavail)
{
 struct mtd_info *mtd = nand_to_mtd(chip);

 if (WARN_ON(oobavail < 0 || oobavail > mtd->oobsize))
  return -EINVAL;

 if (chip->ecc.size && chip->ecc.strength)
  return nand_check_ecc_caps(chip, caps, oobavail);

 if (chip->ecc.options & NAND_ECC_MAXIMIZE)
  return nand_maximize_ecc(chip, caps, oobavail);

 if (!nand_match_ecc_req(chip, caps, oobavail))
  return 0;

 return nand_maximize_ecc(chip, caps, oobavail);
}
