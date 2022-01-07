
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;
struct TYPE_2__ {scalar_t__ state; } ;
struct c_can_priv {int last_status; int (* read_reg ) (struct c_can_priv*,int ) ;scalar_t__ type; TYPE_1__ can; int (* write_reg ) (struct c_can_priv*,int ,int ) ;int sie_pending; } ;


 scalar_t__ BOSCH_D_CAN ;
 scalar_t__ CAN_STATE_BUS_OFF ;
 int C_CAN_BUS_OFF ;
 int C_CAN_ERROR_PASSIVE ;
 int C_CAN_ERROR_WARNING ;
 int C_CAN_NO_ERROR ;
 int C_CAN_STS_REG ;
 int LEC_MASK ;
 int LEC_UNUSED ;
 int STATUS_BOFF ;
 int STATUS_EPASS ;
 int STATUS_EWARN ;
 scalar_t__ atomic_xchg (int *,int ) ;
 scalar_t__ c_can_do_rx_poll (struct net_device*,int) ;
 int c_can_do_tx (struct net_device*) ;
 scalar_t__ c_can_handle_bus_err (struct net_device*,int) ;
 scalar_t__ c_can_handle_state_change (struct net_device*,int ) ;
 int c_can_irq_control (struct c_can_priv*,int) ;
 int napi_complete_done (struct napi_struct*,int) ;
 int netdev_dbg (struct net_device*,char*) ;
 struct c_can_priv* netdev_priv (struct net_device*) ;
 int stub1 (struct c_can_priv*,int ) ;
 int stub2 (struct c_can_priv*,int ,int ) ;

__attribute__((used)) static int c_can_poll(struct napi_struct *napi, int quota)
{
 struct net_device *dev = napi->dev;
 struct c_can_priv *priv = netdev_priv(dev);
 u16 curr, last = priv->last_status;
 int work_done = 0;


 if (atomic_xchg(&priv->sie_pending, 0)) {
  priv->last_status = curr = priv->read_reg(priv, C_CAN_STS_REG);

  if (priv->type != BOSCH_D_CAN)
   priv->write_reg(priv, C_CAN_STS_REG, LEC_UNUSED);
 } else {

  curr = last;
 }


 if ((curr & STATUS_EWARN) && (!(last & STATUS_EWARN))) {
  netdev_dbg(dev, "entered error warning state\n");
  work_done += c_can_handle_state_change(dev, C_CAN_ERROR_WARNING);
 }

 if ((curr & STATUS_EPASS) && (!(last & STATUS_EPASS))) {
  netdev_dbg(dev, "entered error passive state\n");
  work_done += c_can_handle_state_change(dev, C_CAN_ERROR_PASSIVE);
 }

 if ((curr & STATUS_BOFF) && (!(last & STATUS_BOFF))) {
  netdev_dbg(dev, "entered bus off state\n");
  work_done += c_can_handle_state_change(dev, C_CAN_BUS_OFF);
  goto end;
 }


 if ((!(curr & STATUS_BOFF)) && (last & STATUS_BOFF)) {
  netdev_dbg(dev, "left bus off state\n");
  work_done += c_can_handle_state_change(dev, C_CAN_ERROR_PASSIVE);
 }

 if ((!(curr & STATUS_EPASS)) && (last & STATUS_EPASS)) {
  netdev_dbg(dev, "left error passive state\n");
  work_done += c_can_handle_state_change(dev, C_CAN_ERROR_WARNING);
 }

 if ((!(curr & STATUS_EWARN)) && (last & STATUS_EWARN)) {
  netdev_dbg(dev, "left error warning state\n");
  work_done += c_can_handle_state_change(dev, C_CAN_NO_ERROR);
 }


 work_done += c_can_handle_bus_err(dev, curr & LEC_MASK);


 work_done += c_can_do_rx_poll(dev, (quota - work_done));
 c_can_do_tx(dev);

end:
 if (work_done < quota) {
  napi_complete_done(napi, work_done);

  if (priv->can.state != CAN_STATE_BUS_OFF)
   c_can_irq_control(priv, 1);
 }

 return work_done;
}
