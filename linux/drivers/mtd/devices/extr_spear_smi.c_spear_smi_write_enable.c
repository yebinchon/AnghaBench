
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct spear_smi {int status; int lock; TYPE_1__* pdev; scalar_t__ io_base; int cmd_complete; } ;
struct TYPE_2__ {int dev; } ;


 int BANK_SHIFT ;
 int EIO ;
 int SMI_CMD_TIMEOUT ;
 scalar_t__ SMI_CR1 ;
 scalar_t__ SMI_CR2 ;
 int SW_MODE ;
 int TFF ;
 int TFIE ;
 int WE ;
 int WM_SHIFT ;
 int dev_err (int *,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int spear_smi_write_enable(struct spear_smi *dev, u32 bank)
{
 int ret;
 u32 ctrlreg1;

 mutex_lock(&dev->lock);
 dev->status = 0;

 ctrlreg1 = readl(dev->io_base + SMI_CR1);

 writel(ctrlreg1 & ~SW_MODE, dev->io_base + SMI_CR1);


 writel((bank << BANK_SHIFT) | WE | TFIE, dev->io_base + SMI_CR2);

 ret = wait_event_interruptible_timeout(dev->cmd_complete,
   dev->status & TFF, SMI_CMD_TIMEOUT);


 writel(ctrlreg1, dev->io_base + SMI_CR1);
 writel(0, dev->io_base + SMI_CR2);

 if (ret == 0) {
  ret = -EIO;
  dev_err(&dev->pdev->dev,
   "smi controller failed on write enable\n");
 } else if (ret > 0) {

  if (dev->status & (1 << (bank + WM_SHIFT)))
   ret = 0;
  else {
   dev_err(&dev->pdev->dev, "couldn't enable write\n");
   ret = -EIO;
  }
 }

 mutex_unlock(&dev->lock);
 return ret;
}
