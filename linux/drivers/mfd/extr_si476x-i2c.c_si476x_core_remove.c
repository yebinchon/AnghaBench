
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si476x_core {int gpio_reset; int rds_fifo; int status_monitor; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;


 int cancel_delayed_work_sync (int *) ;
 int disable_irq (scalar_t__) ;
 int gpio_free (int ) ;
 scalar_t__ gpio_is_valid (int ) ;
 struct si476x_core* i2c_get_clientdata (struct i2c_client*) ;
 int kfifo_free (int *) ;
 int mfd_remove_devices (int *) ;
 int si476x_core_pronounce_dead (struct si476x_core*) ;

__attribute__((used)) static int si476x_core_remove(struct i2c_client *client)
{
 struct si476x_core *core = i2c_get_clientdata(client);

 si476x_core_pronounce_dead(core);
 mfd_remove_devices(&client->dev);

 if (client->irq)
  disable_irq(client->irq);
 else
  cancel_delayed_work_sync(&core->status_monitor);

 kfifo_free(&core->rds_fifo);

 if (gpio_is_valid(core->gpio_reset))
  gpio_free(core->gpio_reset);

 return 0;
}
