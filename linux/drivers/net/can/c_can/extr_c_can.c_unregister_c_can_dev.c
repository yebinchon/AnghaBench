
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct c_can_priv {int dummy; } ;


 int c_can_pm_runtime_disable (struct c_can_priv*) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int unregister_candev (struct net_device*) ;

void unregister_c_can_dev(struct net_device *dev)
{
 struct c_can_priv *priv = netdev_priv(dev);

 unregister_candev(dev);

 c_can_pm_runtime_disable(priv);
}
