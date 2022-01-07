
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r6040_private {int tx_ring_dma; int tx_ring; int tx_insert_ptr; int tx_remove_ptr; int tx_free_desc; } ;
struct net_device {int dummy; } ;


 int TX_DCNT ;
 struct r6040_private* netdev_priv (struct net_device*) ;
 int r6040_init_ring_desc (int ,int ,int ) ;

__attribute__((used)) static void r6040_init_txbufs(struct net_device *dev)
{
 struct r6040_private *lp = netdev_priv(dev);

 lp->tx_free_desc = TX_DCNT;

 lp->tx_remove_ptr = lp->tx_insert_ptr = lp->tx_ring;
 r6040_init_ring_desc(lp->tx_ring, lp->tx_ring_dma, TX_DCNT);
}
