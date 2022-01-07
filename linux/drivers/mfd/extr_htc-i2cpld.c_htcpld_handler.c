
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct htcpld_data {unsigned int nchips; scalar_t__ int_reset_gpio_lo; scalar_t__ int_reset_gpio_hi; struct htcpld_chip* chip; } ;
struct htcpld_chip {int nirqs; unsigned long cache_in; unsigned int flow_type; int irq_start; int lock; int dev; int cache_out; struct i2c_client* client; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int IRQ_TYPE_EDGE_FALLING ;
 unsigned int IRQ_TYPE_EDGE_RISING ;
 int dev_warn (int ,char*,int) ;
 int generic_handle_irq (int) ;
 int gpio_set_value (scalar_t__,int) ;
 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;
 int pr_debug (char*,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t htcpld_handler(int irq, void *dev)
{
 struct htcpld_data *htcpld = dev;
 unsigned int i;
 unsigned long flags;
 int irqpin;

 if (!htcpld) {
  pr_debug("htcpld is null in ISR\n");
  return IRQ_HANDLED;
 }
 for (i = 0; i < htcpld->nchips; i++) {
  struct htcpld_chip *chip = &htcpld->chip[i];
  struct i2c_client *client;
  int val;
  unsigned long uval, old_val;

  if (!chip) {
   pr_debug("chip %d is null in ISR\n", i);
   continue;
  }

  if (chip->nirqs == 0)
   continue;

  client = chip->client;
  if (!client) {
   pr_debug("client %d is null in ISR\n", i);
   continue;
  }


  val = i2c_smbus_read_byte_data(client, chip->cache_out);
  if (val < 0) {

   dev_warn(chip->dev, "Unable to read from chip: %d\n",
     val);
   continue;
  }

  uval = (unsigned long)val;

  spin_lock_irqsave(&chip->lock, flags);


  old_val = chip->cache_in;


  chip->cache_in = uval;

  spin_unlock_irqrestore(&chip->lock, flags);





  for (irqpin = 0; irqpin < chip->nirqs; irqpin++) {
   unsigned oldb, newb, type = chip->flow_type;

   irq = chip->irq_start + irqpin;



   oldb = (old_val >> irqpin) & 1;
   newb = (uval >> irqpin) & 1;

   if ((!oldb && newb && (type & IRQ_TYPE_EDGE_RISING)) ||
       (oldb && !newb && (type & IRQ_TYPE_EDGE_FALLING))) {
    pr_debug("fire IRQ %d\n", irqpin);
    generic_handle_irq(irq);
   }
  }
 }





 if (htcpld->int_reset_gpio_hi)
  gpio_set_value(htcpld->int_reset_gpio_hi, 1);
 if (htcpld->int_reset_gpio_lo)
  gpio_set_value(htcpld->int_reset_gpio_lo, 0);

 return IRQ_HANDLED;
}
