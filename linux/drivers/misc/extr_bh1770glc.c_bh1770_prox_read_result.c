
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct bh1770_chip {int prox_threshold_hw; scalar_t__ lux_data_raw; int prox_force_update; scalar_t__ prox_persistence_counter; scalar_t__ prox_persistence; TYPE_2__* client; int prox_data; int prox_abs_thres; } ;
struct TYPE_3__ {int kobj; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 int BH1770_PS_DATA_LED1 ;
 int ENODATA ;
 int PROX_ABOVE_THRESHOLD ;
 int PROX_BELOW_THRESHOLD ;
 scalar_t__ PROX_IGNORE_LUX_LIMIT ;
 int bh1770_prox_rate (struct bh1770_chip*,int ) ;
 int bh1770_psraw_to_adjusted (struct bh1770_chip*,int) ;
 int i2c_smbus_read_byte_data (TYPE_2__*,int ) ;
 scalar_t__ likely (int) ;
 int sysfs_notify (int *,int *,char*) ;

__attribute__((used)) static int bh1770_prox_read_result(struct bh1770_chip *chip)
{
 int ret;
 bool above;
 u8 mode;

 ret = i2c_smbus_read_byte_data(chip->client, BH1770_PS_DATA_LED1);
 if (ret < 0)
  goto out;

 if (ret > chip->prox_threshold_hw)
  above = 1;
 else
  above = 0;






 if (chip->lux_data_raw > PROX_IGNORE_LUX_LIMIT)
  ret = 0;

 chip->prox_data = bh1770_psraw_to_adjusted(chip, ret);


 if (chip->prox_data >= chip->prox_abs_thres ||
     chip->prox_force_update)
  chip->prox_persistence_counter = chip->prox_persistence;

 chip->prox_force_update = 0;


 if (likely(above)) {
  if (chip->prox_persistence_counter < chip->prox_persistence) {
   chip->prox_persistence_counter++;
   ret = -ENODATA;
  } else {
   mode = PROX_ABOVE_THRESHOLD;
   ret = 0;
  }
 } else {
  chip->prox_persistence_counter = 0;
  mode = PROX_BELOW_THRESHOLD;
  chip->prox_data = 0;
  ret = 0;
 }


 if (ret == 0) {
  bh1770_prox_rate(chip, mode);
  sysfs_notify(&chip->client->dev.kobj, ((void*)0), "prox0_raw");
 }
out:
 return ret;
}
