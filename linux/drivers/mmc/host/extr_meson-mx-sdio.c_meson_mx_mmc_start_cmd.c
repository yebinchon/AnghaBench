
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {scalar_t__ bus_width; } ;
struct mmc_host {TYPE_1__ ios; } ;
struct mmc_command {int busy_timeout; int flags; int opcode; int arg; TYPE_2__* data; } ;
struct meson_mx_mmc_host {int slot_id; int cmd_timeout; int irq_lock; scalar_t__ base; struct mmc_command* cmd; } ;
struct TYPE_4__ {int blocks; unsigned int blksz; int flags; scalar_t__ bytes_xfered; } ;


 int BIT (int) ;
 unsigned int BITS_PER_BYTE ;
 int FIELD_PREP (int ,int) ;
 scalar_t__ MESON_MX_SDIO_ARGU ;
 scalar_t__ MESON_MX_SDIO_EXT ;
 int MESON_MX_SDIO_EXT_DATA_RW_NUMBER_MASK ;
 int MESON_MX_SDIO_IRQC ;
 int MESON_MX_SDIO_IRQC_ARC_CMD_INT_EN ;
 int MESON_MX_SDIO_IRQS ;
 int MESON_MX_SDIO_IRQS_CMD_INT ;
 scalar_t__ MESON_MX_SDIO_MULT ;
 int MESON_MX_SDIO_MULT_PORT_SEL_MASK ;
 int MESON_MX_SDIO_RESPONSE_CRC16_BITS ;
 scalar_t__ MESON_MX_SDIO_SEND ;
 int MESON_MX_SDIO_SEND_CHECK_DAT0_BUSY ;
 int MESON_MX_SDIO_SEND_CMD_RESP_BITS_MASK ;
 int MESON_MX_SDIO_SEND_COMMAND_INDEX_MASK ;
 int MESON_MX_SDIO_SEND_DATA ;
 int MESON_MX_SDIO_SEND_REPEAT_PACKAGE_TIMES_MASK ;
 int MESON_MX_SDIO_SEND_RESP_CRC7_FROM_8 ;
 int MESON_MX_SDIO_SEND_RESP_HAS_DATA ;
 int MESON_MX_SDIO_SEND_RESP_WITHOUT_CRC7 ;
 scalar_t__ MMC_BUS_WIDTH_4 ;
 int MMC_DATA_WRITE ;
 int MMC_RSP_BUSY ;
 int MMC_RSP_CRC ;




 scalar_t__ jiffies ;
 int meson_mx_mmc_mask_bits (struct mmc_host*,int ,int ,int ) ;
 struct meson_mx_mmc_host* mmc_priv (struct mmc_host*) ;
 int mmc_resp_type (struct mmc_command*) ;
 int mod_timer (int *,scalar_t__) ;
 unsigned long msecs_to_jiffies (int) ;
 int readl (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void meson_mx_mmc_start_cmd(struct mmc_host *mmc,
       struct mmc_command *cmd)
{
 struct meson_mx_mmc_host *host = mmc_priv(mmc);
 unsigned int pack_size;
 unsigned long irqflags, timeout;
 u32 mult, send = 0, ext = 0;

 host->cmd = cmd;

 if (cmd->busy_timeout)
  timeout = msecs_to_jiffies(cmd->busy_timeout);
 else
  timeout = msecs_to_jiffies(1000);

 switch (mmc_resp_type(cmd)) {
 case 131:
 case 130:
 case 128:

  send |= FIELD_PREP(MESON_MX_SDIO_SEND_CMD_RESP_BITS_MASK, 45);
  break;
 case 129:

  send |= FIELD_PREP(MESON_MX_SDIO_SEND_CMD_RESP_BITS_MASK, 133);
  send |= MESON_MX_SDIO_SEND_RESP_CRC7_FROM_8;
  break;
 default:
  break;
 }

 if (!(cmd->flags & MMC_RSP_CRC))
  send |= MESON_MX_SDIO_SEND_RESP_WITHOUT_CRC7;

 if (cmd->flags & MMC_RSP_BUSY)
  send |= MESON_MX_SDIO_SEND_CHECK_DAT0_BUSY;

 if (cmd->data) {
  send |= FIELD_PREP(MESON_MX_SDIO_SEND_REPEAT_PACKAGE_TIMES_MASK,
       (cmd->data->blocks - 1));

  pack_size = cmd->data->blksz * BITS_PER_BYTE;
  if (mmc->ios.bus_width == MMC_BUS_WIDTH_4)
   pack_size += MESON_MX_SDIO_RESPONSE_CRC16_BITS * 4;
  else
   pack_size += MESON_MX_SDIO_RESPONSE_CRC16_BITS * 1;

  ext |= FIELD_PREP(MESON_MX_SDIO_EXT_DATA_RW_NUMBER_MASK,
      pack_size);

  if (cmd->data->flags & MMC_DATA_WRITE)
   send |= MESON_MX_SDIO_SEND_DATA;
  else
   send |= MESON_MX_SDIO_SEND_RESP_HAS_DATA;

  cmd->data->bytes_xfered = 0;
 }

 send |= FIELD_PREP(MESON_MX_SDIO_SEND_COMMAND_INDEX_MASK,
      (0x40 | cmd->opcode));

 spin_lock_irqsave(&host->irq_lock, irqflags);

 mult = readl(host->base + MESON_MX_SDIO_MULT);
 mult &= ~MESON_MX_SDIO_MULT_PORT_SEL_MASK;
 mult |= FIELD_PREP(MESON_MX_SDIO_MULT_PORT_SEL_MASK, host->slot_id);
 mult |= BIT(31);
 writel(mult, host->base + MESON_MX_SDIO_MULT);


 meson_mx_mmc_mask_bits(mmc, MESON_MX_SDIO_IRQC,
          MESON_MX_SDIO_IRQC_ARC_CMD_INT_EN,
          MESON_MX_SDIO_IRQC_ARC_CMD_INT_EN);


 meson_mx_mmc_mask_bits(mmc, MESON_MX_SDIO_IRQS,
          MESON_MX_SDIO_IRQS_CMD_INT,
          MESON_MX_SDIO_IRQS_CMD_INT);

 writel(cmd->arg, host->base + MESON_MX_SDIO_ARGU);
 writel(ext, host->base + MESON_MX_SDIO_EXT);
 writel(send, host->base + MESON_MX_SDIO_SEND);

 spin_unlock_irqrestore(&host->irq_lock, irqflags);

 mod_timer(&host->cmd_timeout, jiffies + timeout);
}
