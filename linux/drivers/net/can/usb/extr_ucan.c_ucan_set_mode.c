
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;
struct ucan_priv {int context_lock; int netdev; int available_tx_urbs; TYPE_1__ can; } ;
struct net_device {int dummy; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;



 int CAN_STATE_ERROR_ACTIVE ;
 int EOPNOTSUPP ;
 int UCAN_COMMAND_RESTART ;
 int netdev_dbg (int ,char*) ;
 struct ucan_priv* netdev_priv (struct net_device*) ;
 int netif_wake_queue (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int ucan_ctrl_command_out (struct ucan_priv*,int ,int ,int ) ;

__attribute__((used)) static int ucan_set_mode(struct net_device *netdev, enum can_mode mode)
{
 int ret;
 unsigned long flags;
 struct ucan_priv *up = netdev_priv(netdev);

 switch (mode) {
 case 128:
  netdev_dbg(up->netdev, "restarting device\n");

  ret = ucan_ctrl_command_out(up, UCAN_COMMAND_RESTART, 0, 0);
  up->can.state = CAN_STATE_ERROR_ACTIVE;





  spin_lock_irqsave(&up->context_lock, flags);

  if (up->available_tx_urbs > 0)
   netif_wake_queue(up->netdev);

  spin_unlock_irqrestore(&up->context_lock, flags);

  return ret;
 default:
  return -EOPNOTSUPP;
 }
}
