
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;
struct device {int dummy; } ;
typedef int reg ;


 int BUG_ON (int) ;
 int i2c_smbus_write_word_data (struct i2c_client*,int ,int ) ;
 int memcpy (int *,void const*,int) ;
 struct i2c_client* to_i2c_client (struct device*) ;

__attribute__((used)) static int retu_regmap_write(void *context, const void *data, size_t count)
{
 u8 reg;
 u16 val;
 struct device *dev = context;
 struct i2c_client *i2c = to_i2c_client(dev);

 BUG_ON(count != sizeof(reg) + sizeof(val));
 memcpy(&reg, data, sizeof(reg));
 memcpy(&val, data + sizeof(reg), sizeof(val));
 return i2c_smbus_write_word_data(i2c, reg, val);
}
