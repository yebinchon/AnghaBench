
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bcmgenet_priv {TYPE_1__* pdev; } ;
typedef int irqreturn_t ;
struct TYPE_2__ {int dev; } ;


 int IRQ_HANDLED ;
 int pm_wakeup_event (int *,int ) ;

__attribute__((used)) static irqreturn_t bcmgenet_wol_isr(int irq, void *dev_id)
{
 struct bcmgenet_priv *priv = dev_id;

 pm_wakeup_event(&priv->pdev->dev, 0);

 return IRQ_HANDLED;
}
