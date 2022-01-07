
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u_char ;
struct ndfc_controller {scalar_t__ ndfcbase; } ;
struct nand_chip {int dummy; } ;


 scalar_t__ NDFC_ECC ;
 int in_be32 (scalar_t__) ;
 struct ndfc_controller* nand_get_controller_data (struct nand_chip*) ;
 int wmb () ;

__attribute__((used)) static int ndfc_calculate_ecc(struct nand_chip *chip,
         const u_char *dat, u_char *ecc_code)
{
 struct ndfc_controller *ndfc = nand_get_controller_data(chip);
 uint32_t ecc;
 uint8_t *p = (uint8_t *)&ecc;

 wmb();
 ecc = in_be32(ndfc->ndfcbase + NDFC_ECC);

 ecc_code[0] = p[1];
 ecc_code[1] = p[2];
 ecc_code[2] = p[3];

 return 0;
}
