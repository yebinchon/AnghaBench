
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ndfc_controller {scalar_t__ ndfcbase; } ;
struct nand_chip {int dummy; } ;


 scalar_t__ NDFC_CCR ;
 int NDFC_CCR_RESET_ECC ;
 int in_be32 (scalar_t__) ;
 struct ndfc_controller* nand_get_controller_data (struct nand_chip*) ;
 int out_be32 (scalar_t__,int ) ;
 int wmb () ;

__attribute__((used)) static void ndfc_enable_hwecc(struct nand_chip *chip, int mode)
{
 uint32_t ccr;
 struct ndfc_controller *ndfc = nand_get_controller_data(chip);

 ccr = in_be32(ndfc->ndfcbase + NDFC_CCR);
 ccr |= NDFC_CCR_RESET_ECC;
 out_be32(ndfc->ndfcbase + NDFC_CCR, ccr);
 wmb();
}
