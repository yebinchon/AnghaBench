
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c2port_ops {int (* c2ck_set ) (struct c2port_device*,int) ;} ;
struct c2port_device {struct c2port_ops* ops; } ;


 int local_irq_disable () ;
 int local_irq_enable () ;
 int stub1 (struct c2port_device*,int) ;
 int stub2 (struct c2port_device*,int) ;
 int udelay (int) ;

__attribute__((used)) static void c2port_strobe_ck(struct c2port_device *dev)
{
 struct c2port_ops *ops = dev->ops;






 local_irq_disable();
 ops->c2ck_set(dev, 0);
 udelay(1);
 ops->c2ck_set(dev, 1);
 local_irq_enable();

 udelay(1);
}
