
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u32 ;
struct nand_sdr_timings {int tR_max; } ;
struct nand_rw_cmd {int dummy; } ;
struct nand_chip {int options; int data_interface; } ;
struct mtd_info {int writesize; } ;
struct TYPE_8__ {int tadl; } ;
struct TYPE_6__ {size_t* addrs; size_t cmd0; size_t cmd1; } ;
struct TYPE_7__ {TYPE_2__ rw; int * cmd; } ;
struct TYPE_5__ {size_t chip_select; } ;
struct meson_nfc {TYPE_4__ timing; scalar_t__ reg_base; TYPE_3__ cmdfifo; TYPE_1__ param; } ;


 size_t NAND_CMD_READ0 ;
 size_t NAND_CMD_READSTART ;
 size_t NAND_CMD_SEQIN ;
 int NAND_ROW_ADDR_3 ;
 size_t NFC_CMD_ALE ;
 size_t NFC_CMD_CLE ;
 scalar_t__ NFC_REG_CMD ;
 int PSEC_TO_MSEC (int ) ;
 size_t ROW_ADDER (int,int) ;
 int meson_nfc_cmd_idle (struct meson_nfc*,int ) ;
 int meson_nfc_queue_rb (struct meson_nfc*,int ) ;
 struct meson_nfc* nand_get_controller_data (struct nand_chip*) ;
 struct nand_sdr_timings* nand_get_sdr_timings (int *) ;
 struct mtd_info* nand_to_mtd (struct nand_chip*) ;
 int writel (size_t,scalar_t__) ;
 int writel_relaxed (int ,scalar_t__) ;

__attribute__((used)) static int meson_nfc_rw_cmd_prepare_and_execute(struct nand_chip *nand,
      int page, bool in)
{
 struct mtd_info *mtd = nand_to_mtd(nand);
 struct meson_nfc *nfc = nand_get_controller_data(nand);
 const struct nand_sdr_timings *sdr =
  nand_get_sdr_timings(&nand->data_interface);
 u32 *addrs = nfc->cmdfifo.rw.addrs;
 u32 cs = nfc->param.chip_select;
 u32 cmd0, cmd_num, row_start;
 int ret = 0, i;

 cmd_num = sizeof(struct nand_rw_cmd) / sizeof(int);

 cmd0 = in ? NAND_CMD_READ0 : NAND_CMD_SEQIN;
 nfc->cmdfifo.rw.cmd0 = cs | NFC_CMD_CLE | cmd0;

 addrs[0] = cs | NFC_CMD_ALE | 0;
 if (mtd->writesize <= 512) {
  cmd_num--;
  row_start = 1;
 } else {
  addrs[1] = cs | NFC_CMD_ALE | 0;
  row_start = 2;
 }

 addrs[row_start] = cs | NFC_CMD_ALE | ROW_ADDER(page, 0);
 addrs[row_start + 1] = cs | NFC_CMD_ALE | ROW_ADDER(page, 1);

 if (nand->options & NAND_ROW_ADDR_3)
  addrs[row_start + 2] =
   cs | NFC_CMD_ALE | ROW_ADDER(page, 2);
 else
  cmd_num--;


 cmd_num--;

 for (i = 0; i < cmd_num; i++)
  writel_relaxed(nfc->cmdfifo.cmd[i],
          nfc->reg_base + NFC_REG_CMD);

 if (in) {
  nfc->cmdfifo.rw.cmd1 = cs | NFC_CMD_CLE | NAND_CMD_READSTART;
  writel(nfc->cmdfifo.rw.cmd1, nfc->reg_base + NFC_REG_CMD);
  meson_nfc_queue_rb(nfc, PSEC_TO_MSEC(sdr->tR_max));
 } else {
  meson_nfc_cmd_idle(nfc, nfc->timing.tadl);
 }

 return ret;
}
