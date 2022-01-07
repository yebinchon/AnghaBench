
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tw5864_dev {TYPE_1__* pci; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int TW5864_INTR_CLR_H ;
 int TW5864_INTR_CLR_L ;
 int TW5864_INTR_STATUS_H ;
 int TW5864_INTR_STATUS_L ;
 int TW5864_INTR_TIMER ;
 int TW5864_INTR_VLC_DONE ;
 int dev_dbg (int *,char*,int) ;
 int tw5864_h264_isr (struct tw5864_dev*) ;
 int tw5864_timer_isr (struct tw5864_dev*) ;
 int tw_readl (int ) ;
 int tw_writel (int ,int) ;

__attribute__((used)) static irqreturn_t tw5864_isr(int irq, void *dev_id)
{
 struct tw5864_dev *dev = dev_id;
 u32 status;

 status = tw_readl(TW5864_INTR_STATUS_L) |
  tw_readl(TW5864_INTR_STATUS_H) << 16;
 if (!status)
  return IRQ_NONE;

 tw_writel(TW5864_INTR_CLR_L, 0xffff);
 tw_writel(TW5864_INTR_CLR_H, 0xffff);

 if (status & TW5864_INTR_VLC_DONE)
  tw5864_h264_isr(dev);

 if (status & TW5864_INTR_TIMER)
  tw5864_timer_isr(dev);

 if (!(status & (TW5864_INTR_TIMER | TW5864_INTR_VLC_DONE))) {
  dev_dbg(&dev->pci->dev, "Unknown interrupt, status 0x%08X\n",
   status);
 }

 return IRQ_HANDLED;
}
