
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bh1770_chip {int int_mode_lux; int int_mode_prox; int client; } ;


 int BH1770_INTERRUPT ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static inline int bh1770_lux_interrupt_control(struct bh1770_chip *chip,
     int lux)
{
 chip->int_mode_lux = lux;

 return i2c_smbus_write_byte_data(chip->client,
     BH1770_INTERRUPT,
     (lux << 1) | chip->int_mode_prox);
}
