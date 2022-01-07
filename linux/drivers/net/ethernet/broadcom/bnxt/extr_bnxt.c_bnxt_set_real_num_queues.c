
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int rx_cpu_rmap; } ;
struct bnxt {int flags; int rx_nr_rings; scalar_t__ tx_nr_rings_xdp; scalar_t__ tx_nr_rings; struct net_device* dev; } ;


 int BNXT_FLAG_RFS ;
 int alloc_irq_cpu_rmap (int ) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,scalar_t__) ;

__attribute__((used)) static int bnxt_set_real_num_queues(struct bnxt *bp)
{
 int rc;
 struct net_device *dev = bp->dev;

 rc = netif_set_real_num_tx_queues(dev, bp->tx_nr_rings -
       bp->tx_nr_rings_xdp);
 if (rc)
  return rc;

 rc = netif_set_real_num_rx_queues(dev, bp->rx_nr_rings);
 if (rc)
  return rc;






 return rc;
}
