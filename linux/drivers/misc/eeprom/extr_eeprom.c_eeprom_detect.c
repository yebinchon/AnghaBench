
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int addr; struct i2c_adapter* adapter; } ;
struct i2c_board_info {int type; } ;
struct i2c_adapter {int class; } ;


 int ENODEV ;
 int I2C_CLASS_SPD ;
 int I2C_FUNC_SMBUS_READ_I2C_BLOCK ;
 int I2C_FUNC_SMBUS_READ_WORD_DATA ;
 int I2C_NAME_SIZE ;
 int i2c_check_functionality (struct i2c_adapter*,int ) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static int eeprom_detect(struct i2c_client *client, struct i2c_board_info *info)
{
 struct i2c_adapter *adapter = client->adapter;




 if (!(adapter->class & I2C_CLASS_SPD) && client->addr >= 0x51)
  return -ENODEV;
 if (!i2c_check_functionality(adapter, I2C_FUNC_SMBUS_READ_WORD_DATA)
  && !i2c_check_functionality(adapter, I2C_FUNC_SMBUS_READ_I2C_BLOCK))
  return -ENODEV;

 strlcpy(info->type, "eeprom", I2C_NAME_SIZE);

 return 0;
}
