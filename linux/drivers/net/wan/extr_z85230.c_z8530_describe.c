
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z8530_dev {size_t type; int irq; int name; } ;


 int Z8530_PORT_OF (unsigned long) ;
 int pr_info (char*,int ,int ,char*,int ,int ) ;
 int * z8530_type_name ;

void z8530_describe(struct z8530_dev *dev, char *mapping, unsigned long io)
{
 pr_info("%s: %s found at %s 0x%lX, IRQ %d\n",
  dev->name,
  z8530_type_name[dev->type],
  mapping,
  Z8530_PORT_OF(io),
  dev->irq);
}
