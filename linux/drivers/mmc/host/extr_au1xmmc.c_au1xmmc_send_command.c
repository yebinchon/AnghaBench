
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mmc_data {int flags; int blocks; } ;
struct mmc_command {int opcode; int arg; } ;
struct au1xmmc_host {int dummy; } ;


 int EINVAL ;
 int HOST_CMD (struct au1xmmc_host*) ;
 int HOST_CMDARG (struct au1xmmc_host*) ;
 int HOST_STATUS (struct au1xmmc_host*) ;
 int IRQ_OFF (struct au1xmmc_host*,int ) ;
 int IRQ_ON (struct au1xmmc_host*,int ) ;
 int MMC_DATA_READ ;
 int MMC_DATA_WRITE ;





 int SD_CMD_CI_SHIFT ;
 int SD_CMD_CT_1 ;
 int SD_CMD_CT_2 ;
 int SD_CMD_CT_3 ;
 int SD_CMD_CT_4 ;
 int SD_CMD_GO ;
 int SD_CMD_RT_1 ;
 int SD_CMD_RT_1B ;
 int SD_CMD_RT_2 ;
 int SD_CMD_RT_3 ;
 int SD_CONFIG_CR ;
 int SD_STATUS_CR ;
 int __raw_readl (int ) ;
 int __raw_writel (int,int ) ;
 int mmc_resp_type (struct mmc_command*) ;
 int pr_info (char*,int) ;
 int wmb () ;

__attribute__((used)) static int au1xmmc_send_command(struct au1xmmc_host *host, int wait,
    struct mmc_command *cmd, struct mmc_data *data)
{
 u32 mmccmd = (cmd->opcode << SD_CMD_CI_SHIFT);

 switch (mmc_resp_type(cmd)) {
 case 132:
  break;
 case 131:
  mmccmd |= SD_CMD_RT_1;
  break;
 case 130:
  mmccmd |= SD_CMD_RT_1B;
  break;
 case 129:
  mmccmd |= SD_CMD_RT_2;
  break;
 case 128:
  mmccmd |= SD_CMD_RT_3;
  break;
 default:
  pr_info("au1xmmc: unhandled response type %02x\n",
   mmc_resp_type(cmd));
  return -EINVAL;
 }

 if (data) {
  if (data->flags & MMC_DATA_READ) {
   if (data->blocks > 1)
    mmccmd |= SD_CMD_CT_4;
   else
    mmccmd |= SD_CMD_CT_2;
  } else if (data->flags & MMC_DATA_WRITE) {
   if (data->blocks > 1)
    mmccmd |= SD_CMD_CT_3;
   else
    mmccmd |= SD_CMD_CT_1;
  }
 }

 __raw_writel(cmd->arg, HOST_CMDARG(host));
 wmb();

 if (wait)
  IRQ_OFF(host, SD_CONFIG_CR);

 __raw_writel((mmccmd | SD_CMD_GO), HOST_CMD(host));
 wmb();


 while (__raw_readl(HOST_CMD(host)) & SD_CMD_GO)
           ;


 if (wait) {
  u32 status = __raw_readl(HOST_STATUS(host));

  while (!(status & SD_STATUS_CR))
   status = __raw_readl(HOST_STATUS(host));


  __raw_writel(SD_STATUS_CR, HOST_STATUS(host));

  IRQ_ON(host, SD_CONFIG_CR);
 }

 return 0;
}
