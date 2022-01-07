
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct tmio_nand {scalar_t__ read_good; scalar_t__ fcr; } ;
struct TYPE_2__ {scalar_t__ IO_ADDR_W; } ;
struct nand_chip {TYPE_1__ legacy; } ;


 scalar_t__ FCR_MODE ;
 int FCR_MODE_ALE ;
 int FCR_MODE_CLE ;
 int FCR_MODE_DATA ;
 int FCR_MODE_STANDBY ;
 unsigned int NAND_ALE ;
 unsigned int NAND_CLE ;
 int NAND_CMD_NONE ;
 unsigned int NAND_CTRL_CHANGE ;
 unsigned int NAND_NCE ;
 struct tmio_nand* mtd_to_tmio (int ) ;
 int nand_to_mtd (struct nand_chip*) ;
 int tmio_iowrite8 (int,scalar_t__) ;

__attribute__((used)) static void tmio_nand_hwcontrol(struct nand_chip *chip, int cmd,
    unsigned int ctrl)
{
 struct tmio_nand *tmio = mtd_to_tmio(nand_to_mtd(chip));

 if (ctrl & NAND_CTRL_CHANGE) {
  u8 mode;

  if (ctrl & NAND_NCE) {
   mode = FCR_MODE_DATA;

   if (ctrl & NAND_CLE)
    mode |= FCR_MODE_CLE;
   else
    mode &= ~FCR_MODE_CLE;

   if (ctrl & NAND_ALE)
    mode |= FCR_MODE_ALE;
   else
    mode &= ~FCR_MODE_ALE;
  } else {
   mode = FCR_MODE_STANDBY;
  }

  tmio_iowrite8(mode, tmio->fcr + FCR_MODE);
  tmio->read_good = 0;
 }

 if (cmd != NAND_CMD_NONE)
  tmio_iowrite8(cmd, chip->legacy.IO_ADDR_W);
}
