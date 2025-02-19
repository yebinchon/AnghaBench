
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mv643xx_eth_private {int tx_timeout_task; } ;


 int netdev_info (struct net_device*,char*) ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void mv643xx_eth_tx_timeout(struct net_device *dev)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);

 netdev_info(dev, "tx timeout\n");

 schedule_work(&mp->tx_timeout_task);
}
