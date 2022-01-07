
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct t7l66xb {scalar_t__ scr; int lock; int clk32k; } ;
struct TYPE_3__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int start; } ;


 scalar_t__ SCR_DEV_CTL ;
 int SCR_DEV_CTL_MMC ;
 int clk_prepare_enable (int ) ;
 struct t7l66xb* dev_get_drvdata (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 TYPE_2__* t7l66xb_mmc_resources ;
 int tmio_core_mmc_enable (scalar_t__,int ,int) ;
 int tmio_ioread8 (scalar_t__) ;
 int tmio_iowrite8 (int ,scalar_t__) ;

__attribute__((used)) static int t7l66xb_mmc_enable(struct platform_device *mmc)
{
 struct t7l66xb *t7l66xb = dev_get_drvdata(mmc->dev.parent);
 unsigned long flags;
 u8 dev_ctl;
 int ret;

 ret = clk_prepare_enable(t7l66xb->clk32k);
 if (ret)
  return ret;

 raw_spin_lock_irqsave(&t7l66xb->lock, flags);

 dev_ctl = tmio_ioread8(t7l66xb->scr + SCR_DEV_CTL);
 dev_ctl |= SCR_DEV_CTL_MMC;
 tmio_iowrite8(dev_ctl, t7l66xb->scr + SCR_DEV_CTL);

 raw_spin_unlock_irqrestore(&t7l66xb->lock, flags);

 tmio_core_mmc_enable(t7l66xb->scr + 0x200, 0,
  t7l66xb_mmc_resources[0].start & 0xfffe);

 return 0;
}
