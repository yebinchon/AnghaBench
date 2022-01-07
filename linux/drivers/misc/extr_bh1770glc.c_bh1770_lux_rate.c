
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bh1770_chip {TYPE_1__* client; scalar_t__ prox_enable_count; } ;
struct TYPE_2__ {int dev; } ;


 int BH1770_ALS_MEAS_RATE ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int) ;
 scalar_t__ pm_runtime_suspended (int *) ;

__attribute__((used)) static int bh1770_lux_rate(struct bh1770_chip *chip, int rate_index)
{

 if (pm_runtime_suspended(&chip->client->dev))
  return 0;


 if (chip->prox_enable_count)
  rate_index = 0;

 return i2c_smbus_write_byte_data(chip->client,
     BH1770_ALS_MEAS_RATE,
     rate_index);
}
