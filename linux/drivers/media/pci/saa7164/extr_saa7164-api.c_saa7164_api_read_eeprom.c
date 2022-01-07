
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct saa7164_dev {int * i2c_bus; } ;
typedef int reg ;


 int ENOMEM ;
 int saa7164_api_i2c_read (int *,int,int,int*,int,int*) ;

int saa7164_api_read_eeprom(struct saa7164_dev *dev, u8 *buf, int buflen)
{
 u8 reg[] = { 0x0f, 0x00 };

 if (buflen < 128)
  return -ENOMEM;



 return saa7164_api_i2c_read(&dev->i2c_bus[0], 0xa0 >> 1, sizeof(reg),
  &reg[0], 128, buf);
}
