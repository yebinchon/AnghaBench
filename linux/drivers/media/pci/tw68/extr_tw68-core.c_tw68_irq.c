
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tw68_dev {int pci_irqmask; int board_virqmask; int name; TYPE_1__* pci; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int TW68_INTMASK ;
 int TW68_INTSTAT ;
 int dev_dbg (int *,char*,int ,int,int) ;
 int tw68_irq_video_done (struct tw68_dev*,int) ;
 int tw_clearl (int ,int) ;
 int tw_readl (int ) ;

__attribute__((used)) static irqreturn_t tw68_irq(int irq, void *dev_id)
{
 struct tw68_dev *dev = dev_id;
 u32 status, orig;
 int loop;

 status = orig = tw_readl(TW68_INTSTAT) & dev->pci_irqmask;

 if (0 == status)
  return IRQ_NONE;
 for (loop = 0; loop < 10; loop++) {
  if (status & dev->board_virqmask)
   tw68_irq_video_done(dev, status);
  status = tw_readl(TW68_INTSTAT) & dev->pci_irqmask;
  if (0 == status)
   return IRQ_HANDLED;
 }
 dev_dbg(&dev->pci->dev, "%s: **** INTERRUPT NOT HANDLED - clearing mask (orig 0x%08x, cur 0x%08x)",
   dev->name, orig, tw_readl(TW68_INTSTAT));
 dev_dbg(&dev->pci->dev, "%s: pci_irqmask 0x%08x; board_virqmask 0x%08x ****\n",
   dev->name, dev->pci_irqmask, dev->board_virqmask);
 tw_clearl(TW68_INTMASK, dev->pci_irqmask);
 return IRQ_HANDLED;
}
