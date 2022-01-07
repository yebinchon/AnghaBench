
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int parent; } ;
struct net_device {TYPE_1__ dev; } ;
struct TYPE_4__ {int state; } ;
struct c_can_priv {TYPE_2__ can; int (* write_reg ) (struct c_can_priv*,int ,int ) ;} ;


 int CAN_STATE_STOPPED ;
 int CONTROL_INIT ;
 int C_CAN_CTRL_REG ;
 int c_can_irq_control (struct c_can_priv*,int) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int pinctrl_pm_select_sleep_state (int ) ;
 int stub1 (struct c_can_priv*,int ,int ) ;

__attribute__((used)) static void c_can_stop(struct net_device *dev)
{
 struct c_can_priv *priv = netdev_priv(dev);

 c_can_irq_control(priv, 0);


 priv->write_reg(priv, C_CAN_CTRL_REG, CONTROL_INIT);


 pinctrl_pm_select_sleep_state(dev->dev.parent);
 priv->can.state = CAN_STATE_STOPPED;
}
