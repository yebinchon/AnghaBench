
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bh1770_chip {int prox_rate_threshold; int prox_rate; int client; } ;


 int BH1770_PS_MEAS_RATE ;
 int PROX_ABOVE_THRESHOLD ;
 int i2c_smbus_write_byte_data (int ,int ,int) ;

__attribute__((used)) static int bh1770_prox_rate(struct bh1770_chip *chip, int mode)
{
 int rate;

 rate = (mode == PROX_ABOVE_THRESHOLD) ?
  chip->prox_rate_threshold : chip->prox_rate;

 return i2c_smbus_write_byte_data(chip->client,
     BH1770_PS_MEAS_RATE,
     rate);
}
