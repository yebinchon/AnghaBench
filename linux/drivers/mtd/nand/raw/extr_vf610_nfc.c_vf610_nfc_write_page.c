
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
typedef int u32 ;
struct vf610_nfc {int ecc_mode; scalar_t__ regs; } ;
struct nand_chip {int cur_cs; } ;
struct mtd_info {int writesize; int oobsize; } ;


 int CMD_BYTE1_SHIFT ;
 int CMD_BYTE2_SHIFT ;
 int CMD_CODE_SHIFT ;
 int COMMAND_CAR_BYTE1 ;
 int COMMAND_CAR_BYTE2 ;
 int COMMAND_CMD_BYTE1 ;
 int COMMAND_CMD_BYTE2 ;
 int COMMAND_RB_HANDSHAKE ;
 int COMMAND_WRITE_DATA ;
 int ECC_BYPASS ;
 int EIO ;
 int NAND_CMD_PAGEPROG ;
 int NAND_CMD_SEQIN ;
 int NAND_STATUS_FAIL ;
 scalar_t__ NFC_MAIN_AREA (int ) ;
 struct vf610_nfc* chip_to_nfc (struct nand_chip*) ;
 int nand_status_op (struct nand_chip*,int*) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int vf610_nfc_ecc_mode (struct vf610_nfc*,int ) ;
 int vf610_nfc_fill_row (struct nand_chip*,int,int*,int*) ;
 int vf610_nfc_run (struct vf610_nfc*,int ,int,int,int,int) ;
 int vf610_nfc_select_target (struct nand_chip*,int ) ;
 int vf610_nfc_wr_to_sram (scalar_t__,int const*,int,int) ;

__attribute__((used)) static int vf610_nfc_write_page(struct nand_chip *chip, const uint8_t *buf,
    int oob_required, int page)
{
 struct vf610_nfc *nfc = chip_to_nfc(chip);
 struct mtd_info *mtd = nand_to_mtd(chip);
 int trfr_sz = mtd->writesize + mtd->oobsize;
 u32 row = 0, cmd1 = 0, cmd2 = 0, code = 0;
 u8 status;
 int ret;

 vf610_nfc_select_target(chip, chip->cur_cs);

 cmd2 |= NAND_CMD_SEQIN << CMD_BYTE1_SHIFT;
 code |= COMMAND_CMD_BYTE1 | COMMAND_CAR_BYTE1 | COMMAND_CAR_BYTE2;

 vf610_nfc_fill_row(chip, page, &code, &row);

 cmd1 |= NAND_CMD_PAGEPROG << CMD_BYTE2_SHIFT;
 code |= COMMAND_CMD_BYTE2 | COMMAND_WRITE_DATA;





 vf610_nfc_wr_to_sram(nfc->regs + NFC_MAIN_AREA(0), buf,
        mtd->writesize, 0);

 code |= COMMAND_RB_HANDSHAKE;
 cmd2 |= code << CMD_CODE_SHIFT;

 vf610_nfc_ecc_mode(nfc, nfc->ecc_mode);
 vf610_nfc_run(nfc, 0, row, cmd1, cmd2, trfr_sz);
 vf610_nfc_ecc_mode(nfc, ECC_BYPASS);

 ret = nand_status_op(chip, &status);
 if (ret)
  return ret;

 if (status & NAND_STATUS_FAIL)
  return -EIO;

 return 0;
}
