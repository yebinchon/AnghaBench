
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct c_can_priv {int dummy; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int EOPNOTSUPP ;
 int c_can_irq_control (struct c_can_priv*,int) ;
 int c_can_start (struct net_device*) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;

__attribute__((used)) static int c_can_set_mode(struct net_device *dev, enum can_mode mode)
{
 struct c_can_priv *priv = netdev_priv(dev);
 int err;

 switch (mode) {
 case 128:
  err = c_can_start(dev);
  if (err)
   return err;
  netif_wake_queue(dev);
  c_can_irq_control(priv, 1);
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
