
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int restart_ms; int state; } ;
struct mcp251x_priv {int restart_tx; int restart_work; int wq; int after_suspend; TYPE_1__ can; } ;
typedef enum can_mode { ____Placeholder_can_mode } can_mode ;


 int AFTER_SUSPEND_RESTART ;

 int CAN_STATE_ERROR_ACTIVE ;
 int EOPNOTSUPP ;
 int mcp251x_clean (struct net_device*) ;
 struct mcp251x_priv* netdev_priv (struct net_device*) ;
 int queue_work (int ,int *) ;

__attribute__((used)) static int mcp251x_do_set_mode(struct net_device *net, enum can_mode mode)
{
 struct mcp251x_priv *priv = netdev_priv(net);

 switch (mode) {
 case 128:
  mcp251x_clean(net);

  priv->can.state = CAN_STATE_ERROR_ACTIVE;
  priv->restart_tx = 1;
  if (priv->can.restart_ms == 0)
   priv->after_suspend = AFTER_SUSPEND_RESTART;
  queue_work(priv->wq, &priv->restart_work);
  break;
 default:
  return -EOPNOTSUPP;
 }

 return 0;
}
