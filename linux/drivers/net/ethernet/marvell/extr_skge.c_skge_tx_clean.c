
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct skge_tx_desc {int control; } ;
struct TYPE_4__ {struct skge_element* to_clean; struct skge_element* to_use; } ;
struct skge_port {TYPE_2__ tx_ring; TYPE_1__* hw; } ;
struct skge_element {int skb; struct skge_tx_desc* desc; struct skge_element* next; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int pdev; } ;


 int BMU_EOF ;
 int dev_kfree_skb (int ) ;
 struct skge_port* netdev_priv (struct net_device*) ;
 int netdev_reset_queue (struct net_device*) ;
 int skge_tx_unmap (int ,struct skge_element*,int) ;

__attribute__((used)) static void skge_tx_clean(struct net_device *dev)
{
 struct skge_port *skge = netdev_priv(dev);
 struct skge_element *e;

 for (e = skge->tx_ring.to_clean; e != skge->tx_ring.to_use; e = e->next) {
  struct skge_tx_desc *td = e->desc;

  skge_tx_unmap(skge->hw->pdev, e, td->control);

  if (td->control & BMU_EOF)
   dev_kfree_skb(e->skb);
  td->control = 0;
 }

 netdev_reset_queue(dev);
 skge->tx_ring.to_clean = e;
}
