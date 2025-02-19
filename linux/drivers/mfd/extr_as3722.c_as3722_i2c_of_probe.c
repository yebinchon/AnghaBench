
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct irq_data {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct i2c_client {TYPE_1__ dev; int irq; } ;
struct device_node {int dummy; } ;
struct as3722 {int irq_flags; void* en_ac_ok_pwr_on; void* en_intern_i2c_pullup; void* en_intern_int_pullup; } ;


 int EINVAL ;
 int dev_dbg (TYPE_1__*,char*,int ) ;
 int dev_err (TYPE_1__*,char*,...) ;
 struct irq_data* irq_get_irq_data (int ) ;
 int irqd_get_trigger_type (struct irq_data*) ;
 void* of_property_read_bool (struct device_node*,char*) ;

__attribute__((used)) static int as3722_i2c_of_probe(struct i2c_client *i2c,
   struct as3722 *as3722)
{
 struct device_node *np = i2c->dev.of_node;
 struct irq_data *irq_data;

 if (!np) {
  dev_err(&i2c->dev, "Device Tree not found\n");
  return -EINVAL;
 }

 irq_data = irq_get_irq_data(i2c->irq);
 if (!irq_data) {
  dev_err(&i2c->dev, "Invalid IRQ: %d\n", i2c->irq);
  return -EINVAL;
 }

 as3722->en_intern_int_pullup = of_property_read_bool(np,
     "ams,enable-internal-int-pullup");
 as3722->en_intern_i2c_pullup = of_property_read_bool(np,
     "ams,enable-internal-i2c-pullup");
 as3722->en_ac_ok_pwr_on = of_property_read_bool(np,
     "ams,enable-ac-ok-power-on");
 as3722->irq_flags = irqd_get_trigger_type(irq_data);
 dev_dbg(&i2c->dev, "IRQ flags are 0x%08lx\n", as3722->irq_flags);
 return 0;
}
