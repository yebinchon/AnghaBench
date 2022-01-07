
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_host {int dummy; } ;
struct mmc_data {int blocks; unsigned int blksz; int flags; int sg_len; int sg; scalar_t__ bytes_xfered; } ;
struct mmc_command {unsigned int opcode; int arg; struct mmc_data* data; } ;
struct meson_host {unsigned int bounce_buf_size; int bounce_dma_addr; scalar_t__ regs; int bounce_buf; struct mmc_command* cmd; } ;


 int CMD_CFG_BLOCK_MODE ;
 int CMD_CFG_CMD_INDEX_MASK ;
 int CMD_CFG_DATA_IO ;
 int CMD_CFG_DATA_WR ;
 int CMD_CFG_END_OF_CHAIN ;
 int CMD_CFG_ERROR ;
 int CMD_CFG_LENGTH_MASK ;
 int CMD_CFG_OWNER ;
 int CMD_CFG_TIMEOUT_MASK ;
 int CMD_DATA_MASK ;
 int FIELD_PREP (int ,unsigned int) ;
 int MMC_DATA_WRITE ;
 scalar_t__ SD_EMMC_CMD_ARG ;
 scalar_t__ SD_EMMC_CMD_CFG ;
 scalar_t__ SD_EMMC_CMD_DAT ;
 scalar_t__ SD_EMMC_CMD_RSP ;
 int SD_EMMC_CMD_TIMEOUT ;
 int WARN_ON (int) ;
 int dma_rmb () ;
 int dma_wmb () ;
 unsigned int ilog2 (int ) ;
 scalar_t__ meson_mmc_desc_chain_mode (struct mmc_data*) ;
 int meson_mmc_desc_chain_transfer (struct mmc_host*,int) ;
 int meson_mmc_get_timeout_msecs (struct mmc_data*) ;
 int meson_mmc_set_blksz (struct mmc_host*,unsigned int) ;
 int meson_mmc_set_response_bits (struct mmc_command*,int*) ;
 struct meson_host* mmc_priv (struct mmc_host*) ;
 int sg_copy_to_buffer (int ,int ,int ,unsigned int) ;
 int wmb () ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void meson_mmc_start_cmd(struct mmc_host *mmc, struct mmc_command *cmd)
{
 struct meson_host *host = mmc_priv(mmc);
 struct mmc_data *data = cmd->data;
 u32 cmd_cfg = 0, cmd_data = 0;
 unsigned int xfer_bytes = 0;


 dma_rmb();

 host->cmd = cmd;

 cmd_cfg |= FIELD_PREP(CMD_CFG_CMD_INDEX_MASK, cmd->opcode);
 cmd_cfg |= CMD_CFG_OWNER;
 cmd_cfg |= CMD_CFG_ERROR;

 meson_mmc_set_response_bits(cmd, &cmd_cfg);


 if (data) {
  data->bytes_xfered = 0;
  cmd_cfg |= CMD_CFG_DATA_IO;
  cmd_cfg |= FIELD_PREP(CMD_CFG_TIMEOUT_MASK,
          ilog2(meson_mmc_get_timeout_msecs(data)));

  if (meson_mmc_desc_chain_mode(data)) {
   meson_mmc_desc_chain_transfer(mmc, cmd_cfg);
   return;
  }

  if (data->blocks > 1) {
   cmd_cfg |= CMD_CFG_BLOCK_MODE;
   cmd_cfg |= FIELD_PREP(CMD_CFG_LENGTH_MASK,
           data->blocks);
   meson_mmc_set_blksz(mmc, data->blksz);
  } else {
   cmd_cfg |= FIELD_PREP(CMD_CFG_LENGTH_MASK, data->blksz);
  }

  xfer_bytes = data->blksz * data->blocks;
  if (data->flags & MMC_DATA_WRITE) {
   cmd_cfg |= CMD_CFG_DATA_WR;
   WARN_ON(xfer_bytes > host->bounce_buf_size);
   sg_copy_to_buffer(data->sg, data->sg_len,
       host->bounce_buf, xfer_bytes);
   dma_wmb();
  }

  cmd_data = host->bounce_dma_addr & CMD_DATA_MASK;
 } else {
  cmd_cfg |= FIELD_PREP(CMD_CFG_TIMEOUT_MASK,
          ilog2(SD_EMMC_CMD_TIMEOUT));
 }


 cmd_cfg |= CMD_CFG_END_OF_CHAIN;
 writel(cmd_cfg, host->regs + SD_EMMC_CMD_CFG);
 writel(cmd_data, host->regs + SD_EMMC_CMD_DAT);
 writel(0, host->regs + SD_EMMC_CMD_RSP);
 wmb();
 writel(cmd->arg, host->regs + SD_EMMC_CMD_ARG);
}
