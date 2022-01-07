
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si476x_core {int gpio_reset; int status_monitor; int is_alive; struct i2c_client* client; int regmap; int power_up_parameters; } ;
struct i2c_client {scalar_t__ irq; int dev; } ;


 int ENODEV ;
 int SI476X_CTSIEN ;
 int SI476X_PROP_INT_CTL_ENABLE ;
 int SI476X_RDSIEN ;
 int SI476X_STCIEN ;
 int atomic_set (int *,int) ;
 int cancel_delayed_work_sync (int *) ;
 int dev_err (int *,char*,int) ;
 int disable_irq (scalar_t__) ;
 int enable_irq (scalar_t__) ;
 scalar_t__ gpio_is_valid (int ) ;
 int gpio_set_value_cansleep (int ,int) ;
 int regmap_write (int ,int ,int) ;
 int si476x_core_cmd_power_up (struct si476x_core*,int *) ;
 int si476x_core_config_pinmux (struct si476x_core*) ;
 int si476x_core_schedule_polling_work (struct si476x_core*) ;
 int udelay (int) ;

int si476x_core_start(struct si476x_core *core, bool soft)
{
 struct i2c_client *client = core->client;
 int err;

 if (!soft) {
  if (gpio_is_valid(core->gpio_reset))
   gpio_set_value_cansleep(core->gpio_reset, 1);

  if (client->irq)
   enable_irq(client->irq);

  udelay(100);

  if (!client->irq) {
   atomic_set(&core->is_alive, 1);
   si476x_core_schedule_polling_work(core);
  }
 } else {
  if (client->irq)
   enable_irq(client->irq);
  else {
   atomic_set(&core->is_alive, 1);
   si476x_core_schedule_polling_work(core);
  }
 }

 err = si476x_core_cmd_power_up(core,
           &core->power_up_parameters);

 if (err < 0) {
  dev_err(&core->client->dev,
   "Power up failure(err = %d)\n",
   err);
  goto disable_irq;
 }

 if (client->irq)
  atomic_set(&core->is_alive, 1);

 err = si476x_core_config_pinmux(core);
 if (err < 0) {
  dev_err(&core->client->dev,
   "Failed to configure pinmux(err = %d)\n",
   err);
  goto disable_irq;
 }

 if (client->irq) {
  err = regmap_write(core->regmap,
       SI476X_PROP_INT_CTL_ENABLE,
       SI476X_RDSIEN |
       SI476X_STCIEN |
       SI476X_CTSIEN);
  if (err < 0) {
   dev_err(&core->client->dev,
    "Failed to configure interrupt sources"
    "(err = %d)\n", err);
   goto disable_irq;
  }
 }

 return 0;

disable_irq:
 if (err == -ENODEV)
  atomic_set(&core->is_alive, 0);

 if (client->irq)
  disable_irq(client->irq);
 else
  cancel_delayed_work_sync(&core->status_monitor);

 if (gpio_is_valid(core->gpio_reset))
  gpio_set_value_cansleep(core->gpio_reset, 0);

 return err;
}
