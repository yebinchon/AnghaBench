
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct bh1770_chip {TYPE_1__* client; int prox_threshold_hw; int prox_threshold; } ;
struct TYPE_2__ {int dev; } ;


 int BH1770_PS_TH_LED1 ;
 int bh1770_psadjusted_to_raw (struct bh1770_chip*,int ) ;
 int i2c_smbus_write_byte_data (TYPE_1__*,int ,int ) ;
 scalar_t__ pm_runtime_suspended (int *) ;

__attribute__((used)) static int bh1770_prox_set_threshold(struct bh1770_chip *chip)
{
 u8 tmp = 0;


 if (pm_runtime_suspended(&chip->client->dev))
  return 0;

 tmp = bh1770_psadjusted_to_raw(chip, chip->prox_threshold);
 chip->prox_threshold_hw = tmp;

 return i2c_smbus_write_byte_data(chip->client, BH1770_PS_TH_LED1,
     tmp);
}
