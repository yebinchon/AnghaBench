
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct w5300_priv {int dummy; } ;
struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;


 struct w5300_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int w5300_hw_reset (struct w5300_priv*) ;
 int w5300_hw_start (struct w5300_priv*) ;

__attribute__((used)) static void w5300_tx_timeout(struct net_device *ndev)
{
 struct w5300_priv *priv = netdev_priv(ndev);

 netif_stop_queue(ndev);
 w5300_hw_reset(priv);
 w5300_hw_start(priv);
 ndev->stats.tx_errors++;
 netif_trans_update(ndev);
 netif_wake_queue(ndev);
}
