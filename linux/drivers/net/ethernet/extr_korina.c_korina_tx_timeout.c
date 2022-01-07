
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct korina_private {int restart_task; } ;


 struct korina_private* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void korina_tx_timeout(struct net_device *dev)
{
 struct korina_private *lp = netdev_priv(dev);

 schedule_work(&lp->restart_task);
}
