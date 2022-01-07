
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;
struct htcpld_chip {int cache_out; int set_val_work; int lock; struct i2c_client* client; } ;
struct gpio_chip {int dummy; } ;


 struct htcpld_chip* gpiochip_get_data (struct gpio_chip*) ;
 int schedule_work (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void htcpld_chip_set(struct gpio_chip *chip, unsigned offset, int val)
{
 struct i2c_client *client;
 struct htcpld_chip *chip_data = gpiochip_get_data(chip);
 unsigned long flags;

 client = chip_data->client;
 if (!client)
  return;

 spin_lock_irqsave(&chip_data->lock, flags);
 if (val)
  chip_data->cache_out |= (1 << offset);
 else
  chip_data->cache_out &= ~(1 << offset);
 spin_unlock_irqrestore(&chip_data->lock, flags);

 schedule_work(&(chip_data->set_val_work));
}
