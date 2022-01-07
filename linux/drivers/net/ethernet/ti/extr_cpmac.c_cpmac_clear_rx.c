
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_dropped; } ;
struct net_device {TYPE_1__ stats; } ;
struct cpmac_priv {int ring_size; struct cpmac_desc* rx_head; } ;
struct cpmac_desc {int dataflags; TYPE_2__* prev; struct cpmac_desc* next; int mapping; int hw_next; } ;
struct TYPE_4__ {scalar_t__ hw_next; } ;


 int CPMAC_OWN ;
 int cpmac_dump_desc (struct net_device*,struct cpmac_desc*) ;
 scalar_t__ net_ratelimit () ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_msg_hw (struct cpmac_priv*) ;
 scalar_t__ netif_msg_rx_err (struct cpmac_priv*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void cpmac_clear_rx(struct net_device *dev)
{
 struct cpmac_priv *priv = netdev_priv(dev);
 struct cpmac_desc *desc;
 int i;

 if (unlikely(!priv->rx_head))
  return;
 desc = priv->rx_head;
 for (i = 0; i < priv->ring_size; i++) {
  if ((desc->dataflags & CPMAC_OWN) == 0) {
   if (netif_msg_rx_err(priv) && net_ratelimit())
    netdev_warn(dev, "packet dropped\n");
   if (unlikely(netif_msg_hw(priv)))
    cpmac_dump_desc(dev, desc);
   desc->dataflags = CPMAC_OWN;
   dev->stats.rx_dropped++;
  }
  desc->hw_next = desc->next->mapping;
  desc = desc->next;
 }
 priv->rx_head->prev->hw_next = 0;
}
