
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct mtd_info {int dummy; } ;
struct mpc5121_nfc_prv {int csreg; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int ENOMEM ;
 struct nand_chip* mtd_to_nand (struct mtd_info*) ;
 struct mpc5121_nfc_prv* nand_get_controller_data (struct nand_chip*) ;
 struct device_node* of_find_compatible_node (int *,int *,char*) ;
 int of_iomap (struct device_node*,int ) ;
 int of_node_put (struct device_node*) ;

__attribute__((used)) static int ads5121_chipselect_init(struct mtd_info *mtd)
{
 struct nand_chip *chip = mtd_to_nand(mtd);
 struct mpc5121_nfc_prv *prv = nand_get_controller_data(chip);
 struct device_node *dn;

 dn = of_find_compatible_node(((void*)0), ((void*)0), "fsl,mpc5121ads-cpld");
 if (dn) {
  prv->csreg = of_iomap(dn, 0);
  of_node_put(dn);
  if (!prv->csreg)
   return -ENOMEM;


  prv->csreg += 9;
  return 0;
 }

 return -EINVAL;
}
