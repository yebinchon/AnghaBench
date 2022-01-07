
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_4__ {int num_queues; } ;
struct TYPE_3__ {int num_queues; } ;
struct gve_priv {TYPE_2__ tx_cfg; TYPE_1__ rx_cfg; } ;


 int EOPNOTSUPP ;

 int GVE_MAIN_STATS_LEN ;
 int NUM_GVE_RX_CNTS ;
 int NUM_GVE_TX_CNTS ;
 struct gve_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static int gve_get_sset_count(struct net_device *netdev, int sset)
{
 struct gve_priv *priv = netdev_priv(netdev);

 switch (sset) {
 case 128:
  return GVE_MAIN_STATS_LEN +
         (priv->rx_cfg.num_queues * NUM_GVE_RX_CNTS) +
         (priv->tx_cfg.num_queues * NUM_GVE_TX_CNTS);
 default:
  return -EOPNOTSUPP;
 }
}
