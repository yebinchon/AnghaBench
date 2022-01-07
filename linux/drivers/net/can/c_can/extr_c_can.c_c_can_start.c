
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pinctrl {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct c_can_priv {scalar_t__ type; int device; TYPE_1__ can; int comm_rcv_high; } ;


 scalar_t__ BOSCH_D_CAN ;
 int CAN_STATE_ERROR_ACTIVE ;
 int IF_COMM_RCV_HIGH ;
 int IF_COMM_RCV_LOW ;
 int IS_ERR (struct pinctrl*) ;
 int c_can_chip_config (struct net_device*) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 struct pinctrl* pinctrl_get_select (int ,char*) ;
 int pinctrl_pm_select_default_state (int ) ;
 int pinctrl_put (struct pinctrl*) ;

__attribute__((used)) static int c_can_start(struct net_device *dev)
{
 struct c_can_priv *priv = netdev_priv(dev);
 int err;
 struct pinctrl *p;


 err = c_can_chip_config(dev);
 if (err)
  return err;


 priv->comm_rcv_high = priv->type != BOSCH_D_CAN ?
  IF_COMM_RCV_LOW : IF_COMM_RCV_HIGH;

 priv->can.state = CAN_STATE_ERROR_ACTIVE;


 p = pinctrl_get_select(priv->device, "active");
 if (!IS_ERR(p))
  pinctrl_put(p);
 else
  pinctrl_pm_select_default_state(priv->device);

 return 0;
}
