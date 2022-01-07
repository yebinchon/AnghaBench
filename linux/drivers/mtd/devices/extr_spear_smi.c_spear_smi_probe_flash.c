
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct spear_smi {int status; int lock; scalar_t__ io_base; int cmd_complete; } ;


 int BANK_SHIFT ;
 int ENODEV ;
 int OPCODE_RDID ;
 int RX_LEN_SHIFT ;
 int SEND ;
 int SMI_CMD_TIMEOUT ;
 scalar_t__ SMI_CR1 ;
 scalar_t__ SMI_CR2 ;
 int SMI_PROBE_TIMEOUT ;
 scalar_t__ SMI_RR ;
 scalar_t__ SMI_TR ;
 int SW_MODE ;
 int TFF ;
 int TFIE ;
 int TX_LEN_SHIFT ;
 int get_flash_index (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 int spear_smi_wait_till_ready (struct spear_smi*,int,int ) ;
 int wait_event_interruptible_timeout (int ,int,int ) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int spear_smi_probe_flash(struct spear_smi *dev, u32 bank)
{
 int ret;
 u32 val = 0;

 ret = spear_smi_wait_till_ready(dev, bank, SMI_PROBE_TIMEOUT);
 if (ret)
  return ret;

 mutex_lock(&dev->lock);

 dev->status = 0;

 val = readl(dev->io_base + SMI_CR1);
 writel(val | SW_MODE, dev->io_base + SMI_CR1);


 writel(OPCODE_RDID, dev->io_base + SMI_TR);

 val = (bank << BANK_SHIFT) | SEND | (1 << TX_LEN_SHIFT) |
  (3 << RX_LEN_SHIFT) | TFIE;
 writel(val, dev->io_base + SMI_CR2);


 ret = wait_event_interruptible_timeout(dev->cmd_complete,
   dev->status & TFF, SMI_CMD_TIMEOUT);
 if (ret <= 0) {
  ret = -ENODEV;
  goto err_probe;
 }


 val = readl(dev->io_base + SMI_RR);
 val &= 0x00ffffff;
 ret = get_flash_index(val);

err_probe:

 val = readl(dev->io_base + SMI_CR1);
 writel(val & ~SW_MODE, dev->io_base + SMI_CR1);

 mutex_unlock(&dev->lock);
 return ret;
}
