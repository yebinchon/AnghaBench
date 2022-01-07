
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vf610_nfc {scalar_t__ variant; } ;
struct nand_chip {int dummy; } ;


 int BIT (unsigned int) ;
 int NFC_ROW_ADDR ;
 scalar_t__ NFC_VFC610 ;
 int ROW_ADDR_CHIP_SEL_MASK ;
 int ROW_ADDR_CHIP_SEL_RB_MASK ;
 int ROW_ADDR_CHIP_SEL_RB_SHIFT ;
 int ROW_ADDR_CHIP_SEL_SHIFT ;
 struct vf610_nfc* chip_to_nfc (struct nand_chip*) ;
 int vf610_nfc_read (struct vf610_nfc*,int ) ;
 int vf610_nfc_write (struct vf610_nfc*,int ,int) ;

__attribute__((used)) static void vf610_nfc_select_target(struct nand_chip *chip, unsigned int cs)
{
 struct vf610_nfc *nfc = chip_to_nfc(chip);
 u32 tmp;


 if (nfc->variant != NFC_VFC610)
  return;

 tmp = vf610_nfc_read(nfc, NFC_ROW_ADDR);
 tmp &= ~(ROW_ADDR_CHIP_SEL_RB_MASK | ROW_ADDR_CHIP_SEL_MASK);
 tmp |= 1 << ROW_ADDR_CHIP_SEL_RB_SHIFT;
 tmp |= BIT(cs) << ROW_ADDR_CHIP_SEL_SHIFT;

 vf610_nfc_write(nfc, NFC_ROW_ADDR, tmp);
}
