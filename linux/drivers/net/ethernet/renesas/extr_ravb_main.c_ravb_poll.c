
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct ravb_private {scalar_t__ chip_id; scalar_t__ rx_over_errors; scalar_t__ rx_fifo_errors; TYPE_1__* stats; int lock; struct napi_struct* napi; } ;
struct TYPE_4__ {scalar_t__ rx_over_errors; scalar_t__ rx_fifo_errors; } ;
struct net_device {TYPE_2__ stats; } ;
struct napi_struct {struct net_device* dev; } ;
struct TYPE_3__ {scalar_t__ rx_over_errors; } ;


 int BIT (int) ;
 size_t RAVB_BE ;
 size_t RAVB_NC ;
 scalar_t__ RCAR_GEN2 ;
 int RIC0 ;
 int RIE0 ;
 int RIS0 ;
 int RIS0_RESERVED ;
 int TIC ;
 int TIE ;
 int TIS ;
 int TIS_RESERVED ;
 int napi_complete (struct napi_struct*) ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int netif_wake_subqueue (struct net_device*,int) ;
 int ravb_modify (struct net_device*,int ,int,int) ;
 int ravb_read (struct net_device*,int ) ;
 scalar_t__ ravb_rx (struct net_device*,int*,int) ;
 int ravb_tx_free (struct net_device*,int,int) ;
 int ravb_write (struct net_device*,int,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int ravb_poll(struct napi_struct *napi, int budget)
{
 struct net_device *ndev = napi->dev;
 struct ravb_private *priv = netdev_priv(ndev);
 unsigned long flags;
 int q = napi - priv->napi;
 int mask = BIT(q);
 int quota = budget;
 u32 ris0, tis;

 for (;;) {
  tis = ravb_read(ndev, TIS);
  ris0 = ravb_read(ndev, RIS0);
  if (!((ris0 & mask) || (tis & mask)))
   break;


  if (ris0 & mask) {

   ravb_write(ndev, ~(mask | RIS0_RESERVED), RIS0);
   if (ravb_rx(ndev, &quota, q))
    goto out;
  }

  if (tis & mask) {
   spin_lock_irqsave(&priv->lock, flags);

   ravb_write(ndev, ~(mask | TIS_RESERVED), TIS);
   ravb_tx_free(ndev, q, 1);
   netif_wake_subqueue(ndev, q);
   spin_unlock_irqrestore(&priv->lock, flags);
  }
 }

 napi_complete(napi);


 spin_lock_irqsave(&priv->lock, flags);
 if (priv->chip_id == RCAR_GEN2) {
  ravb_modify(ndev, RIC0, mask, mask);
  ravb_modify(ndev, TIC, mask, mask);
 } else {
  ravb_write(ndev, mask, RIE0);
  ravb_write(ndev, mask, TIE);
 }
 spin_unlock_irqrestore(&priv->lock, flags);


 priv->rx_over_errors = priv->stats[RAVB_BE].rx_over_errors;
 priv->rx_over_errors += priv->stats[RAVB_NC].rx_over_errors;
 if (priv->rx_over_errors != ndev->stats.rx_over_errors)
  ndev->stats.rx_over_errors = priv->rx_over_errors;
 if (priv->rx_fifo_errors != ndev->stats.rx_fifo_errors)
  ndev->stats.rx_fifo_errors = priv->rx_fifo_errors;
out:
 return budget - quota;
}
