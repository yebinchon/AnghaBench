
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spear_smi {int status; int lock; scalar_t__ io_base; TYPE_1__* pdev; int cmd_complete; } ;
struct TYPE_2__ {int dev; } ;


 int BANK_SHIFT ;
 int EIO ;
 int SEND ;
 int SMI_CMD_TIMEOUT ;
 scalar_t__ SMI_CR1 ;
 scalar_t__ SMI_CR2 ;
 int SMI_MAX_TIME_OUT ;
 scalar_t__ SMI_TR ;
 int SW_MODE ;
 int TFF ;
 int TFIE ;
 int TX_LEN_SHIFT ;
 int WB_MODE ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 int spear_smi_wait_till_ready (struct spear_smi*,int,int ) ;
 int spear_smi_write_enable (struct spear_smi*,int) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int spear_smi_erase_sector(struct spear_smi *dev,
  u32 bank, u32 command, u32 bytes)
{
 u32 ctrlreg1 = 0;
 int ret;

 ret = spear_smi_wait_till_ready(dev, bank, SMI_MAX_TIME_OUT);
 if (ret)
  return ret;

 ret = spear_smi_write_enable(dev, bank);
 if (ret)
  return ret;

 mutex_lock(&dev->lock);

 ctrlreg1 = readl(dev->io_base + SMI_CR1);
 writel((ctrlreg1 | SW_MODE) & ~WB_MODE, dev->io_base + SMI_CR1);


 writel(command, dev->io_base + SMI_TR);

 writel((bank << BANK_SHIFT) | SEND | TFIE | (bytes << TX_LEN_SHIFT),
   dev->io_base + SMI_CR2);

 ret = wait_event_interruptible_timeout(dev->cmd_complete,
   dev->status & TFF, SMI_CMD_TIMEOUT);

 if (ret == 0) {
  ret = -EIO;
  dev_err(&dev->pdev->dev, "sector erase failed\n");
 } else if (ret > 0)
  ret = 0;


 writel(ctrlreg1, dev->io_base + SMI_CR1);
 writel(0, dev->io_base + SMI_CR2);

 mutex_unlock(&dev->lock);
 return ret;
}
