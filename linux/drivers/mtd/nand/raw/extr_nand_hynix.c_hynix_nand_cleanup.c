
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int dummy; } ;
struct hynix_nand {struct hynix_nand* read_retry; } ;


 int kfree (struct hynix_nand*) ;
 struct hynix_nand* nand_get_manufacturer_data (struct nand_chip*) ;
 int nand_set_manufacturer_data (struct nand_chip*,int *) ;

__attribute__((used)) static void hynix_nand_cleanup(struct nand_chip *chip)
{
 struct hynix_nand *hynix = nand_get_manufacturer_data(chip);

 if (!hynix)
  return;

 kfree(hynix->read_retry);
 kfree(hynix);
 nand_set_manufacturer_data(chip, ((void*)0));
}
