
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct b53_device {int cpu_port; } ;


 int B53_CTRL_PAGE ;
 int B53_GMII_PORT_OVERRIDE_CTRL (int) ;
 int B53_PORT_OVERRIDE_CTRL ;
 int GMII_PO_EN ;
 int PORT_OVERRIDE_EN ;
 int PORT_OVERRIDE_LINK ;
 int b53_read8 (struct b53_device*,int ,int ,int *) ;
 int b53_write8 (struct b53_device*,int ,int ,int ) ;

__attribute__((used)) static void b53_force_link(struct b53_device *dev, int port, int link)
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
 if (link)
  reg |= PORT_OVERRIDE_LINK;
 else
  reg &= ~PORT_OVERRIDE_LINK;
 b53_write8(dev, B53_CTRL_PAGE, off, reg);
}
