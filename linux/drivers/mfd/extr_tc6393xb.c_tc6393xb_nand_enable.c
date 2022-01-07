
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tc6393xb {int lock; scalar_t__ scr; } ;
struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;


 scalar_t__ SCR_GPI_BCR (int) ;
 int dev_dbg (int ,char*) ;
 struct tc6393xb* dev_get_drvdata (int ) ;
 int raw_spin_lock_irqsave (int *,unsigned long) ;
 int raw_spin_unlock_irqrestore (int *,unsigned long) ;
 int tmio_iowrite8 (int,scalar_t__) ;

__attribute__((used)) static int tc6393xb_nand_enable(struct platform_device *nand)
{
 struct tc6393xb *tc6393xb = dev_get_drvdata(nand->dev.parent);
 unsigned long flags;

 raw_spin_lock_irqsave(&tc6393xb->lock, flags);


 dev_dbg(nand->dev.parent, "SMD buffer on\n");
 tmio_iowrite8(0xff, tc6393xb->scr + SCR_GPI_BCR(1));

 raw_spin_unlock_irqrestore(&tc6393xb->lock, flags);

 return 0;
}
