
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int options; } ;
struct mtd_info {int writesize; } ;
struct mpc5121_nfc_prv {int column; int spareonly; } ;


 int NAND_BUSWIDTH_16 ;







 unsigned int NAND_CMD_READSTART ;


 int mpc5121_nfc_addr_cycle (struct mtd_info*,int,int) ;
 int mpc5121_nfc_send_cmd (struct mtd_info*,unsigned int) ;
 int mpc5121_nfc_send_prog_page (struct mtd_info*) ;
 int mpc5121_nfc_send_read_id (struct mtd_info*) ;
 int mpc5121_nfc_send_read_page (struct mtd_info*) ;
 int mpc5121_nfc_send_read_status (struct mtd_info*) ;
 struct mpc5121_nfc_prv* nand_get_controller_data (struct nand_chip*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;

__attribute__((used)) static void mpc5121_nfc_command(struct nand_chip *chip, unsigned command,
    int column, int page)
{
 struct mtd_info *mtd = nand_to_mtd(chip);
 struct mpc5121_nfc_prv *prv = nand_get_controller_data(chip);

 prv->column = (column >= 0) ? column : 0;
 prv->spareonly = 0;

 switch (command) {
 case 134:
  mpc5121_nfc_send_prog_page(mtd);
  break;




 case 133:
  column = 0;
  break;

 case 132:
  prv->column += 256;
  command = 133;
  column = 0;
  break;

 case 130:
  prv->spareonly = 1;
  command = 133;
  column = 0;
  break;

 case 129:
  mpc5121_nfc_command(chip, 133, column, page);
  column = 0;
  break;

 case 136:
 case 135:
 case 131:
 case 128:
  break;

 default:
  return;
 }

 mpc5121_nfc_send_cmd(mtd, command);
 mpc5121_nfc_addr_cycle(mtd, column, page);

 switch (command) {
 case 133:
  if (mtd->writesize > 512)
   mpc5121_nfc_send_cmd(mtd, NAND_CMD_READSTART);
  mpc5121_nfc_send_read_page(mtd);
  break;

 case 131:
  mpc5121_nfc_send_read_id(mtd);
  break;

 case 128:
  mpc5121_nfc_send_read_status(mtd);
  if (chip->options & NAND_BUSWIDTH_16)
   prv->column = 1;
  else
   prv->column = 0;
  break;
 }
}
