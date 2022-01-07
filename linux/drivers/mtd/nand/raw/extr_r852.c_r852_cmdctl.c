
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r852_device {int ctlreg; scalar_t__ card_unstable; } ;
struct nand_chip {int dummy; } ;


 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_ERASE1 ;
 int NAND_CMD_NONE ;
 int NAND_CMD_SEQIN ;
 unsigned int NAND_CTRL_CHANGE ;
 unsigned int NAND_NCE ;
 int R852_CTL ;
 int R852_CTL_CARDENABLE ;
 int R852_CTL_COMMAND ;
 int R852_CTL_DATA ;
 int R852_CTL_ON ;
 int R852_CTL_WRITE ;
 int R852_DATALINE ;
 int nand_to_mtd (struct nand_chip*) ;
 struct r852_device* r852_get_dev (int ) ;
 int r852_write_reg (struct r852_device*,int ,int) ;

__attribute__((used)) static void r852_cmdctl(struct nand_chip *chip, int dat, unsigned int ctrl)
{
 struct r852_device *dev = r852_get_dev(nand_to_mtd(chip));

 if (dev->card_unstable)
  return;

 if (ctrl & NAND_CTRL_CHANGE) {

  dev->ctlreg &= ~(R852_CTL_DATA | R852_CTL_COMMAND |
     R852_CTL_ON | R852_CTL_CARDENABLE);

  if (ctrl & NAND_ALE)
   dev->ctlreg |= R852_CTL_DATA;

  if (ctrl & NAND_CLE)
   dev->ctlreg |= R852_CTL_COMMAND;

  if (ctrl & NAND_NCE)
   dev->ctlreg |= (R852_CTL_CARDENABLE | R852_CTL_ON);
  else
   dev->ctlreg &= ~R852_CTL_WRITE;


  if (dat == NAND_CMD_ERASE1)
   dev->ctlreg |= R852_CTL_WRITE;

  r852_write_reg(dev, R852_CTL, dev->ctlreg);
 }



 if (dat == NAND_CMD_SEQIN && (dev->ctlreg & R852_CTL_COMMAND)) {
  dev->ctlreg |= R852_CTL_WRITE;
  r852_write_reg(dev, R852_CTL, dev->ctlreg);
 }

 if (dat != NAND_CMD_NONE)
  r852_write_reg(dev, R852_DATALINE, dat);
}
