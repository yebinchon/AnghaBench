
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct t7l66xb {int clk32k; int lock; scalar_t__ scr; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 scalar_t__ SCR_DEV_CTL ;
 int SCR_DEV_CTL_MMC ;
 int clk_disable_unprepare (int ) ;
 struct t7l66xb* dev_get_drvdata (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int tmio_ioread8 (scalar_t__) ;
 int tmio_iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static int t7l66xb_mmc_disable(struct platform_device *mmc)
{
 struct t7l66xb *t7l66xb = dev_get_drvdata(mmc->dev.parent);
 unsigned long flags;
 u8 dev_ctl;

 raw_spin_lock_irqsave(&t7l66xb->lock, flags);

 dev_ctl = tmio_ioread8(t7l66xb->scr + SCR_DEV_CTL);
 dev_ctl &= ~SCR_DEV_CTL_MMC;
 tmio_iowrite8(dev_ctl, t7l66xb->scr + SCR_DEV_CTL);

 raw_spin_unlock_irqrestore(&t7l66xb->lock, flags);

 clk_disable_unprepare(t7l66xb->clk32k);

 return 0;
}
