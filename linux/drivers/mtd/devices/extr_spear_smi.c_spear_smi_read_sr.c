
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spear_smi {int status; int lock; scalar_t__ io_base; int cmd_complete; } ;


 int BANK_SHIFT ;
 int ETIMEDOUT ;
 int RD_STATUS_REG ;
 int SMI_CMD_TIMEOUT ;
 scalar_t__ SMI_CR1 ;
 scalar_t__ SMI_CR2 ;
 int SW_MODE ;
 int TFF ;
 int TFIE ;
 int WB_MODE ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int spear_smi_read_sr(struct spear_smi *dev, u32 bank)
{
 int ret;
 u32 ctrlreg1;

 mutex_lock(&dev->lock);
 dev->status = 0;

 ctrlreg1 = readl(dev->io_base + SMI_CR1);

 writel(ctrlreg1 & ~(SW_MODE | WB_MODE), dev->io_base + SMI_CR1);


 writel((bank << BANK_SHIFT) | RD_STATUS_REG | TFIE,
   dev->io_base + SMI_CR2);


 ret = wait_event_interruptible_timeout(dev->cmd_complete,
   dev->status & TFF, SMI_CMD_TIMEOUT);


 if (ret > 0)
  ret = dev->status & 0xffff;
 else if (ret == 0)
  ret = -ETIMEDOUT;


 writel(ctrlreg1, dev->io_base + SMI_CR1);
 writel(0, dev->io_base + SMI_CR2);
 mutex_unlock(&dev->lock);

 return ret;
}
