
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ndfc_controller {scalar_t__ ndfcbase; } ;
struct nand_chip {int dummy; } ;


 scalar_t__ NDFC_STAT ;
 int NDFC_STAT_IS_READY ;
 int in_be32 (scalar_t__) ;
 struct ndfc_controller* nand_get_controller_data (struct nand_chip*) ;

__attribute__((used)) static int ndfc_ready(struct nand_chip *chip)
{
 struct ndfc_controller *ndfc = nand_get_controller_data(chip);

 return in_be32(ndfc->ndfcbase + NDFC_STAT) & NDFC_STAT_IS_READY;
}
