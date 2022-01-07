
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dsa_switch {int dev; struct b53_device* priv; } ;
struct b53_device {int dummy; } ;


 int B53_CTRL_PAGE ;
 int B53_PORT_CTRL (int) ;





 int PORT_CTRL_BLOCK_STATE ;
 int PORT_CTRL_DIS_STATE ;
 int PORT_CTRL_FWD_STATE ;
 int PORT_CTRL_LEARN_STATE ;
 int PORT_CTRL_LISTEN_STATE ;
 int PORT_CTRL_STP_STATE_MASK ;
 int b53_read8 (struct b53_device*,int ,int ,int*) ;
 int b53_write8 (struct b53_device*,int ,int ,int) ;
 int dev_err (int ,char*,int) ;

void b53_br_set_stp_state(struct dsa_switch *ds, int port, u8 state)
{
 struct b53_device *dev = ds->priv;
 u8 hw_state;
 u8 reg;

 switch (state) {
 case 131:
  hw_state = PORT_CTRL_DIS_STATE;
  break;
 case 128:
  hw_state = PORT_CTRL_LISTEN_STATE;
  break;
 case 129:
  hw_state = PORT_CTRL_LEARN_STATE;
  break;
 case 130:
  hw_state = PORT_CTRL_FWD_STATE;
  break;
 case 132:
  hw_state = PORT_CTRL_BLOCK_STATE;
  break;
 default:
  dev_err(ds->dev, "invalid STP state: %d\n", state);
  return;
 }

 b53_read8(dev, B53_CTRL_PAGE, B53_PORT_CTRL(port), &reg);
 reg &= ~PORT_CTRL_STP_STATE_MASK;
 reg |= hw_state;
 b53_write8(dev, B53_CTRL_PAGE, B53_PORT_CTRL(port), reg);
}
