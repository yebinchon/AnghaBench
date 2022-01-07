
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saa7134_dev {int dummy; } ;
typedef enum i2c_attr { ____Placeholder_i2c_attr } i2c_attr ;


 int SAA7134_I2C_ATTR_STATUS ;
 int i2c_dbg (int,char*,int ) ;
 int saa_andorb (int ,int,int) ;
 int * str_i2c_attr ;

__attribute__((used)) static inline void i2c_set_attr(struct saa7134_dev *dev, enum i2c_attr attr)
{
 i2c_dbg(2, "i2c attr => %s\n", str_i2c_attr[attr]);
 saa_andorb(SAA7134_I2C_ATTR_STATUS,0xc0,attr << 6);
}
