
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ pending; } ;
struct softing_priv {TYPE_4__ tx; } ;
struct TYPE_6__ {int last_bus; scalar_t__ pending; } ;
struct TYPE_5__ {int svc_count; } ;
struct softing {TYPE_3__* pdat; struct net_device** net; TYPE_2__ tx; int spin; TYPE_1__ irq; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;
struct TYPE_7__ {int nbus; } ;


 int ARRAY_SIZE (struct net_device**) ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 scalar_t__ TXMAX ;
 scalar_t__ TX_ECHO_SKB_MAX ;
 int canif_is_active (struct net_device*) ;
 struct softing_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 scalar_t__ softing_handle_1 (struct softing*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static irqreturn_t softing_irq_thread(int irq, void *dev_id)
{
 struct softing *card = (struct softing *)dev_id;
 struct net_device *netdev;
 struct softing_priv *priv;
 int j, offset, work_done;

 work_done = 0;
 spin_lock_bh(&card->spin);
 while (softing_handle_1(card) > 0) {
  ++card->irq.svc_count;
  ++work_done;
 }
 spin_unlock_bh(&card->spin);

 offset = card->tx.last_bus;
 for (j = 0; j < ARRAY_SIZE(card->net); ++j) {
  if (card->tx.pending >= TXMAX)
   break;
  netdev = card->net[(j + offset + 1) % card->pdat->nbus];
  if (!netdev)
   continue;
  priv = netdev_priv(netdev);
  if (!canif_is_active(netdev))

   continue;
  if (priv->tx.pending >= TX_ECHO_SKB_MAX)
   continue;
  ++work_done;
  netif_wake_queue(netdev);
 }
 return work_done ? IRQ_HANDLED : IRQ_NONE;
}
