
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; } ;
struct enc28j60_net {int restart_work; } ;


 int netdev_err (struct net_device*,char*) ;
 struct enc28j60_net* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_timer (struct enc28j60_net*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void enc28j60_tx_timeout(struct net_device *ndev)
{
 struct enc28j60_net *priv = netdev_priv(ndev);

 if (netif_msg_timer(priv))
  netdev_err(ndev, "tx timeout\n");

 ndev->stats.tx_errors++;

 schedule_work(&priv->restart_work);
}
