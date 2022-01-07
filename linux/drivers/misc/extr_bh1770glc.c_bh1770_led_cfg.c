
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bh1770_chip {int prox_led; int client; } ;


 int BH1770_I_LED ;
 int BH1770_LED1 ;
 int BH1770_LED_5mA ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static inline int bh1770_led_cfg(struct bh1770_chip *chip)
{

 return i2c_smbus_write_byte_data(chip->client,
     BH1770_I_LED,
     (BH1770_LED1 << 6) |
     (BH1770_LED_5mA << 3) |
     chip->prox_led);
}
