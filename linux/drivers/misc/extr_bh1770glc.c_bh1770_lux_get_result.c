
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bh1770_chip {int lux_data_raw; int client; } ;


 int BH1770_ALS_DATA_0 ;
 int BH1770_ALS_DATA_1 ;
 int i2c_smbus_read_byte_data (int ,int ) ;

__attribute__((used)) static int bh1770_lux_get_result(struct bh1770_chip *chip)
{
 u16 data;
 int ret;

 ret = i2c_smbus_read_byte_data(chip->client, BH1770_ALS_DATA_0);
 if (ret < 0)
  return ret;

 data = ret & 0xff;
 ret = i2c_smbus_read_byte_data(chip->client, BH1770_ALS_DATA_1);
 if (ret < 0)
  return ret;

 chip->lux_data_raw = data | ((ret & 0xff) << 8);

 return 0;
}
