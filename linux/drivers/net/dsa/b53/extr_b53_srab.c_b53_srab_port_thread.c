
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b53_srab_port_priv {scalar_t__ mode; int num; struct b53_device* dev; } ;
struct b53_device {int ds; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 scalar_t__ PHY_INTERFACE_MODE_SGMII ;
 int b53_port_event (int ,int ) ;

__attribute__((used)) static irqreturn_t b53_srab_port_thread(int irq, void *dev_id)
{
 struct b53_srab_port_priv *port = dev_id;
 struct b53_device *dev = port->dev;

 if (port->mode == PHY_INTERFACE_MODE_SGMII)
  b53_port_event(dev->ds, port->num);

 return IRQ_HANDLED;
}
