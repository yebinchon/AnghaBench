
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct cc770_priv {TYPE_1__ can; } ;


 scalar_t__ CAN_STATE_STOPPED ;
 struct cc770_priv* netdev_priv (struct net_device*) ;
 int set_normal_mode (struct net_device*) ;
 int set_reset_mode (struct net_device*) ;

__attribute__((used)) static void cc770_start(struct net_device *dev)
{
 struct cc770_priv *priv = netdev_priv(dev);


 if (priv->can.state != CAN_STATE_STOPPED)
  set_reset_mode(dev);


 set_normal_mode(dev);
}
