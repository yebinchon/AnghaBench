
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct xcan_priv {TYPE_1__ can; } ;
struct net_device {int dummy; } ;


 int CAN_STATE_STOPPED ;
 struct xcan_priv* netdev_priv (struct net_device*) ;
 int set_reset_mode (struct net_device*) ;

__attribute__((used)) static void xcan_chip_stop(struct net_device *ndev)
{
 struct xcan_priv *priv = netdev_priv(ndev);


 set_reset_mode(ndev);
 priv->can.state = CAN_STATE_STOPPED;
}
