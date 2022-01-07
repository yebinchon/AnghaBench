
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bdx_priv {int ndev; TYPE_1__* pdev; } ;
struct TYPE_2__ {int irq; } ;


 int ENTER ;
 int RET () ;
 int bdx_disable_interrupts (struct bdx_priv*) ;
 int free_irq (int ,int ) ;
 int netif_carrier_off (int ) ;
 int netif_stop_queue (int ) ;

__attribute__((used)) static void bdx_hw_stop(struct bdx_priv *priv)
{
 ENTER;
 bdx_disable_interrupts(priv);
 free_irq(priv->pdev->irq, priv->ndev);

 netif_carrier_off(priv->ndev);
 netif_stop_queue(priv->ndev);

 RET();
}
