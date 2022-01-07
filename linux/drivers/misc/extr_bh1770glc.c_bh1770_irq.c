
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bh1770_chip {int lux_wait_result; int int_mode_prox; size_t prox_rate_threshold; int int_mode_lux; int prox_work; int mutex; TYPE_2__* client; int lux_threshold_lo; int lux_threshold_hi; int wait; } ;
typedef int irqreturn_t ;
struct TYPE_4__ {int kobj; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;


 int BH1770_ALS_PS_STATUS ;
 int BH1770_INTERRUPT ;
 int BH1770_INT_ALS_DATA ;
 int BH1770_INT_ALS_INT ;
 int BH1770_INT_LEDS_INT ;
 int IRQ_HANDLED ;
 int bh1770_lux_get_result (struct bh1770_chip*) ;
 int bh1770_lux_update_thresholds (struct bh1770_chip*,int ,int ) ;
 int bh1770_prox_read_result (struct bh1770_chip*) ;
 int cancel_delayed_work_sync (int *) ;
 int i2c_smbus_read_byte_data (TYPE_2__*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_2__*,int ,int) ;
 int msecs_to_jiffies (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int* prox_rates_ms ;
 int schedule_delayed_work (int *,int ) ;
 int sysfs_notify (int *,int *,char*) ;
 scalar_t__ unlikely (int) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t bh1770_irq(int irq, void *data)
{
 struct bh1770_chip *chip = data;
 int status;
 int rate = 0;

 mutex_lock(&chip->mutex);
 status = i2c_smbus_read_byte_data(chip->client, BH1770_ALS_PS_STATUS);


 i2c_smbus_read_byte_data(chip->client, BH1770_INTERRUPT);





 if (status & BH1770_INT_ALS_DATA) {
  bh1770_lux_get_result(chip);
  if (unlikely(chip->lux_wait_result)) {
   chip->lux_wait_result = 0;
   wake_up(&chip->wait);
   bh1770_lux_update_thresholds(chip,
      chip->lux_threshold_hi,
      chip->lux_threshold_lo);
  }
 }


 i2c_smbus_write_byte_data(chip->client, BH1770_INTERRUPT,
      (0 << 1) | (0 << 0));

 if ((status & BH1770_INT_ALS_INT))
  sysfs_notify(&chip->client->dev.kobj, ((void*)0), "lux0_input");

 if (chip->int_mode_prox && (status & BH1770_INT_LEDS_INT)) {
  rate = prox_rates_ms[chip->prox_rate_threshold];
  bh1770_prox_read_result(chip);
 }


 i2c_smbus_write_byte_data(chip->client, BH1770_INTERRUPT,
      (chip->int_mode_lux << 1) |
      (chip->int_mode_prox << 0));
 mutex_unlock(&chip->mutex);





 if (rate) {




  cancel_delayed_work_sync(&chip->prox_work);
  schedule_delayed_work(&chip->prox_work,
    msecs_to_jiffies(rate + 50));
 }
 return IRQ_HANDLED;
}
