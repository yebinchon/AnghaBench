
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct mmc_command {int flags; int arg; int opcode; TYPE_1__* data; } ;
struct jz4740_mmc_host {int cmdat; scalar_t__ version; scalar_t__ base; scalar_t__ use_dma; struct mmc_command* cmd; } ;
struct TYPE_2__ {int flags; int blocks; int blksz; } ;


 int JZ_MMC_CMDAT_BUSY ;
 int JZ_MMC_CMDAT_DATA_EN ;
 int JZ_MMC_CMDAT_DMA_EN ;
 int JZ_MMC_CMDAT_INIT ;
 int JZ_MMC_CMDAT_RSP_R1 ;
 int JZ_MMC_CMDAT_RSP_R2 ;
 int JZ_MMC_CMDAT_RSP_R3 ;
 int JZ_MMC_CMDAT_WRITE ;
 int JZ_MMC_DMAC_DMA_EN ;
 int JZ_MMC_DMAC_DMA_SEL ;
 scalar_t__ JZ_MMC_JZ4780 ;
 scalar_t__ JZ_REG_MMC_ARG ;
 scalar_t__ JZ_REG_MMC_BLKLEN ;
 scalar_t__ JZ_REG_MMC_CMD ;
 scalar_t__ JZ_REG_MMC_CMDAT ;
 scalar_t__ JZ_REG_MMC_DMAC ;
 scalar_t__ JZ_REG_MMC_NOB ;
 int MMC_DATA_WRITE ;
 int MMC_RSP_BUSY ;




 int jz4740_mmc_clock_disable (struct jz4740_mmc_host*) ;
 int jz4740_mmc_clock_enable (struct jz4740_mmc_host*,int) ;
 int mmc_resp_type (struct mmc_command*) ;
 int writeb (int ,scalar_t__) ;
 int writel (int,scalar_t__) ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void jz4740_mmc_send_command(struct jz4740_mmc_host *host,
 struct mmc_command *cmd)
{
 uint32_t cmdat = host->cmdat;

 host->cmdat &= ~JZ_MMC_CMDAT_INIT;
 jz4740_mmc_clock_disable(host);

 host->cmd = cmd;

 if (cmd->flags & MMC_RSP_BUSY)
  cmdat |= JZ_MMC_CMDAT_BUSY;

 switch (mmc_resp_type(cmd)) {
 case 130:
 case 131:
  cmdat |= JZ_MMC_CMDAT_RSP_R1;
  break;
 case 129:
  cmdat |= JZ_MMC_CMDAT_RSP_R2;
  break;
 case 128:
  cmdat |= JZ_MMC_CMDAT_RSP_R3;
  break;
 default:
  break;
 }

 if (cmd->data) {
  cmdat |= JZ_MMC_CMDAT_DATA_EN;
  if (cmd->data->flags & MMC_DATA_WRITE)
   cmdat |= JZ_MMC_CMDAT_WRITE;
  if (host->use_dma) {
   if (host->version >= JZ_MMC_JZ4780) {
    writel(JZ_MMC_DMAC_DMA_EN | JZ_MMC_DMAC_DMA_SEL,
           host->base + JZ_REG_MMC_DMAC);
   } else {
    cmdat |= JZ_MMC_CMDAT_DMA_EN;
   }
  } else if (host->version >= JZ_MMC_JZ4780) {
   writel(0, host->base + JZ_REG_MMC_DMAC);
  }

  writew(cmd->data->blksz, host->base + JZ_REG_MMC_BLKLEN);
  writew(cmd->data->blocks, host->base + JZ_REG_MMC_NOB);
 }

 writeb(cmd->opcode, host->base + JZ_REG_MMC_CMD);
 writel(cmd->arg, host->base + JZ_REG_MMC_ARG);
 writel(cmdat, host->base + JZ_REG_MMC_CMDAT);

 jz4740_mmc_clock_enable(host, 1);
}
