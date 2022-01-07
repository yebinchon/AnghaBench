
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sh_flctl {int flintdmacr_base; TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int FLINTDMACR (struct sh_flctl*) ;
 int IRQ_HANDLED ;
 int dev_err (int *,char*,int ) ;
 int readl (int ) ;
 int writel (int ,int ) ;

__attribute__((used)) static irqreturn_t flctl_handle_flste(int irq, void *dev_id)
{
 struct sh_flctl *flctl = dev_id;

 dev_err(&flctl->pdev->dev, "flste irq: %x\n", readl(FLINTDMACR(flctl)));
 writel(flctl->flintdmacr_base, FLINTDMACR(flctl));

 return IRQ_HANDLED;
}
