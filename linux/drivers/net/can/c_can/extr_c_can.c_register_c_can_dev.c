
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct net_device {int * netdev_ops; int flags; TYPE_1__ dev; } ;
struct c_can_priv {int dummy; } ;


 int IFF_ECHO ;
 int c_can_netdev_ops ;
 int c_can_pm_runtime_disable (struct c_can_priv*) ;
 int c_can_pm_runtime_enable (struct c_can_priv*) ;
 int devm_can_led_init (struct net_device*) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int pinctrl_pm_select_sleep_state (int ) ;
 int register_candev (struct net_device*) ;

int register_c_can_dev(struct net_device *dev)
{
 struct c_can_priv *priv = netdev_priv(dev);
 int err;






 pinctrl_pm_select_sleep_state(dev->dev.parent);

 c_can_pm_runtime_enable(priv);

 dev->flags |= IFF_ECHO;
 dev->netdev_ops = &c_can_netdev_ops;

 err = register_candev(dev);
 if (err)
  c_can_pm_runtime_disable(priv);
 else
  devm_can_led_init(dev);

 return err;
}
