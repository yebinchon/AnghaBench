
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wil6210_priv {int n_msi; TYPE_1__* pdev; } ;
struct TYPE_2__ {int irq; } ;


 int enable_irq (int) ;

void wil_enable_irq(struct wil6210_priv *wil)
{
 int irq = wil->pdev->irq;

 enable_irq(irq);
 if (wil->n_msi == 3) {
  enable_irq(irq + 1);
  enable_irq(irq + 2);
 }
}
