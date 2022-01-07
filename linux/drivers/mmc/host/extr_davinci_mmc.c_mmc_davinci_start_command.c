
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_davinci_host {scalar_t__ version; scalar_t__ data_dir; scalar_t__ bus_mode; int active_request; scalar_t__ bytes_left; scalar_t__ base; scalar_t__ do_dma; int * data; int mmc; struct mmc_command* cmd; } ;
struct mmc_command {int opcode; int arg; scalar_t__ data; } ;


 scalar_t__ DAVINCI_MMCARGHL ;
 scalar_t__ DAVINCI_MMCCMD ;
 scalar_t__ DAVINCI_MMCIM ;
 scalar_t__ DAVINCI_MMCTOR ;
 scalar_t__ DAVINCI_MMC_DATADIR_READ ;
 scalar_t__ DAVINCI_MMC_DATADIR_WRITE ;
 int MMCCMD_BSYEXP ;
 int MMCCMD_DMATRIG ;
 int MMCCMD_DTRW ;
 int MMCCMD_PPLEN ;
 int MMCCMD_RSPFMT_NONE ;
 int MMCCMD_RSPFMT_R1456 ;
 int MMCCMD_RSPFMT_R2 ;
 int MMCCMD_RSPFMT_R3 ;
 int MMCCMD_WDATX ;
 int MMCST0_CRCRD ;
 int MMCST0_CRCRS ;
 int MMCST0_CRCWR ;
 int MMCST0_DATDNE ;
 int MMCST0_DRRDY ;
 int MMCST0_DXRDY ;
 int MMCST0_RSPDNE ;
 int MMCST0_TOUTRD ;
 int MMCST0_TOUTRS ;
 scalar_t__ MMC_BUSMODE_PUSHPULL ;
 scalar_t__ MMC_CTLR_VERSION_2 ;




 int cpu_relax () ;
 int davinci_fifo_data_trans (struct mmc_davinci_host*,int ) ;
 int dev_dbg (int ,char*,int,...) ;
 int mmc_davinci_irq (int ,struct mmc_davinci_host*) ;
 int mmc_dev (int ) ;
 int mmc_resp_type (struct mmc_command*) ;
 int poll_loopcount ;
 scalar_t__ poll_threshold ;
 int rw_threshold ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void mmc_davinci_start_command(struct mmc_davinci_host *host,
  struct mmc_command *cmd)
{
 u32 cmd_reg = 0;
 u32 im_val;

 dev_dbg(mmc_dev(host->mmc), "CMD%d, arg 0x%08x%s\n",
  cmd->opcode, cmd->arg,
  ({ char *s;
  switch (mmc_resp_type(cmd)) {
  case 131:
   s = ", R1/R5/R6/R7 response";
   break;
  case 130:
   s = ", R1b response";
   break;
  case 129:
   s = ", R2 response";
   break;
  case 128:
   s = ", R3/R4 response";
   break;
  default:
   s = ", (R? response)";
   break;
  }; s; }));
 host->cmd = cmd;

 switch (mmc_resp_type(cmd)) {
 case 130:




  cmd_reg |= MMCCMD_BSYEXP;

 case 131:
  cmd_reg |= MMCCMD_RSPFMT_R1456;
  break;
 case 129:
  cmd_reg |= MMCCMD_RSPFMT_R2;
  break;
 case 128:
  cmd_reg |= MMCCMD_RSPFMT_R3;
  break;
 default:
  cmd_reg |= MMCCMD_RSPFMT_NONE;
  dev_dbg(mmc_dev(host->mmc), "unknown resp_type %04x\n",
   mmc_resp_type(cmd));
  break;
 }


 cmd_reg |= cmd->opcode;


 if (host->do_dma)
  cmd_reg |= MMCCMD_DMATRIG;

 if (host->version == MMC_CTLR_VERSION_2 && host->data != ((void*)0) &&
   host->data_dir == DAVINCI_MMC_DATADIR_READ)
  cmd_reg |= MMCCMD_DMATRIG;


 if (cmd->data)
  cmd_reg |= MMCCMD_WDATX;


 if (host->data_dir == DAVINCI_MMC_DATADIR_WRITE)
  cmd_reg |= MMCCMD_DTRW;

 if (host->bus_mode == MMC_BUSMODE_PUSHPULL)
  cmd_reg |= MMCCMD_PPLEN;


 writel(0x1FFF, host->base + DAVINCI_MMCTOR);


 im_val = MMCST0_RSPDNE | MMCST0_CRCRS | MMCST0_TOUTRS;
 if (host->data_dir == DAVINCI_MMC_DATADIR_WRITE) {
  im_val |= MMCST0_DATDNE | MMCST0_CRCWR;

  if (!host->do_dma)
   im_val |= MMCST0_DXRDY;
 } else if (host->data_dir == DAVINCI_MMC_DATADIR_READ) {
  im_val |= MMCST0_DATDNE | MMCST0_CRCRD | MMCST0_TOUTRD;

  if (!host->do_dma)
   im_val |= MMCST0_DRRDY;
 }





 if (!host->do_dma && (host->data_dir == DAVINCI_MMC_DATADIR_WRITE))
  davinci_fifo_data_trans(host, rw_threshold);

 writel(cmd->arg, host->base + DAVINCI_MMCARGHL);
 writel(cmd_reg, host->base + DAVINCI_MMCCMD);

 host->active_request = 1;

 if (!host->do_dma && host->bytes_left <= poll_threshold) {
  u32 count = poll_loopcount;

  while (host->active_request && count--) {
   mmc_davinci_irq(0, host);
   cpu_relax();
  }
 }

 if (host->active_request)
  writel(im_val, host->base + DAVINCI_MMCIM);
}
