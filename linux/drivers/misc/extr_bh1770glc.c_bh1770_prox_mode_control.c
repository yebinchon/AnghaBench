
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bh1770_chip {int prox_force_update; int client; int lux_rate_index; scalar_t__ prox_data; scalar_t__ prox_enable_count; } ;


 int BH1770_DISABLE ;
 int BH1770_ENABLE ;
 int BH1770_PS_CONTROL ;
 int BH1770_STANDALONE ;
 int BH1770_STANDBY ;
 int PROX_BELOW_THRESHOLD ;
 int bh1770_led_cfg (struct bh1770_chip*) ;
 int bh1770_lux_rate (struct bh1770_chip*,int ) ;
 int bh1770_prox_interrupt_control (struct bh1770_chip*,int ) ;
 int bh1770_prox_rate (struct bh1770_chip*,int ) ;
 int bh1770_prox_set_threshold (struct bh1770_chip*) ;
 int i2c_smbus_write_byte_data (int ,int ,int ) ;

__attribute__((used)) static int bh1770_prox_mode_control(struct bh1770_chip *chip)
{
 if (chip->prox_enable_count) {
  chip->prox_force_update = 1;

  bh1770_lux_rate(chip, chip->lux_rate_index);
  bh1770_prox_set_threshold(chip);
  bh1770_led_cfg(chip);
  bh1770_prox_rate(chip, PROX_BELOW_THRESHOLD);
  bh1770_prox_interrupt_control(chip, BH1770_ENABLE);
  i2c_smbus_write_byte_data(chip->client,
     BH1770_PS_CONTROL, BH1770_STANDALONE);
 } else {
  chip->prox_data = 0;
  bh1770_lux_rate(chip, chip->lux_rate_index);
  bh1770_prox_interrupt_control(chip, BH1770_DISABLE);
  i2c_smbus_write_byte_data(chip->client,
     BH1770_PS_CONTROL, BH1770_STANDBY);
 }
 return 0;
}
