
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bh1770_chip {int int_mode_prox; int int_mode_lux; int client; } ;


 int BH1770_INTERRUPT ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static inline int bh1770_prox_interrupt_control(struct bh1770_chip *chip,
     int ps)
{
 chip->int_mode_prox = ps;
 return i2c_smbus_write_byte_data(chip->client,
     BH1770_INTERRUPT,
     (chip->int_mode_lux << 1) | (ps << 0));
}
