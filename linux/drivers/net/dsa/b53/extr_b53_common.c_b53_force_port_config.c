
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b53_device {int cpu_port; int dev; } ;


 int B53_CTRL_PAGE ;
 int B53_GMII_PORT_OVERRIDE_CTRL (int) ;
 int B53_PORT_OVERRIDE_CTRL ;
 int DUPLEX_FULL ;
 int GMII_PO_EN ;
 int MLO_PAUSE_RX ;
 int MLO_PAUSE_TX ;
 int PORT_OVERRIDE_EN ;
 int PORT_OVERRIDE_FULL_DUPLEX ;
 int PORT_OVERRIDE_RX_FLOW ;
 int PORT_OVERRIDE_SPEED_1000M ;
 int PORT_OVERRIDE_SPEED_100M ;
 int PORT_OVERRIDE_SPEED_10M ;
 int PORT_OVERRIDE_SPEED_2000M ;
 int PORT_OVERRIDE_TX_FLOW ;



 int b53_read8 (struct b53_device*,int ,int ,int *) ;
 int b53_write8 (struct b53_device*,int ,int ,int ) ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static void b53_force_port_config(struct b53_device *dev, int port,
      int speed, int duplex, int pause)
{
 u8 reg, val, off;


 if (port == dev->cpu_port) {
  off = B53_PORT_OVERRIDE_CTRL;
  val = PORT_OVERRIDE_EN;
 } else {
  off = B53_GMII_PORT_OVERRIDE_CTRL(port);
  val = GMII_PO_EN;
 }

 b53_read8(dev, B53_CTRL_PAGE, off, &reg);
 reg |= val;
 if (duplex == DUPLEX_FULL)
  reg |= PORT_OVERRIDE_FULL_DUPLEX;
 else
  reg &= ~PORT_OVERRIDE_FULL_DUPLEX;

 switch (speed) {
 case 2000:
  reg |= PORT_OVERRIDE_SPEED_2000M;

 case 128:
  reg |= PORT_OVERRIDE_SPEED_1000M;
  break;
 case 129:
  reg |= PORT_OVERRIDE_SPEED_100M;
  break;
 case 130:
  reg |= PORT_OVERRIDE_SPEED_10M;
  break;
 default:
  dev_err(dev->dev, "unknown speed: %d\n", speed);
  return;
 }

 if (pause & MLO_PAUSE_RX)
  reg |= PORT_OVERRIDE_RX_FLOW;
 if (pause & MLO_PAUSE_TX)
  reg |= PORT_OVERRIDE_TX_FLOW;

 b53_write8(dev, B53_CTRL_PAGE, off, reg);
}
