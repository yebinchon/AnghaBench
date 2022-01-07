
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dsa_switch {struct b53_device* priv; } ;
struct b53_device {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* irq_disable ) (struct b53_device*,int) ;} ;


 int B53_CTRL_PAGE ;
 int B53_PORT_CTRL (int) ;
 int PORT_CTRL_RX_DISABLE ;
 int PORT_CTRL_TX_DISABLE ;
 int b53_read8 (struct b53_device*,int ,int ,int*) ;
 int b53_write8 (struct b53_device*,int ,int ,int) ;
 int stub1 (struct b53_device*,int) ;

void b53_disable_port(struct dsa_switch *ds, int port)
{
 struct b53_device *dev = ds->priv;
 u8 reg;


 b53_read8(dev, B53_CTRL_PAGE, B53_PORT_CTRL(port), &reg);
 reg |= PORT_CTRL_RX_DISABLE | PORT_CTRL_TX_DISABLE;
 b53_write8(dev, B53_CTRL_PAGE, B53_PORT_CTRL(port), reg);

 if (dev->ops->irq_disable)
  dev->ops->irq_disable(dev, port);
}
