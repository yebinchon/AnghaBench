
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r852_device {int ctlreg; scalar_t__ card_unstable; } ;
struct nand_chip {int dummy; } ;





 int R852_CTL ;
 int R852_CTL_ECC_ACCESS ;
 int R852_CTL_ECC_ENABLE ;
 int R852_DATALINE ;
 int nand_to_mtd (struct nand_chip*) ;
 struct r852_device* r852_get_dev (int ) ;
 int r852_read_reg_dword (struct r852_device*,int ) ;
 int r852_write_reg (struct r852_device*,int ,int) ;

__attribute__((used)) static void r852_ecc_hwctl(struct nand_chip *chip, int mode)
{
 struct r852_device *dev = r852_get_dev(nand_to_mtd(chip));

 if (dev->card_unstable)
  return;

 switch (mode) {
 case 130:
 case 128:

  dev->ctlreg |= R852_CTL_ECC_ENABLE;


  r852_write_reg(dev, R852_CTL,
   dev->ctlreg | R852_CTL_ECC_ACCESS);

  r852_read_reg_dword(dev, R852_DATALINE);
  r852_write_reg(dev, R852_CTL, dev->ctlreg);
  return;

 case 129:

  dev->ctlreg &= ~R852_CTL_ECC_ENABLE;
  r852_write_reg(dev, R852_CTL, dev->ctlreg);
 }
}
