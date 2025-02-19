
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct i2c_adapter {struct em28xx_i2c_bus* algo_data; } ;
struct em28xx_i2c_bus {scalar_t__ algo_type; } ;


 scalar_t__ EM28XX_I2C_ALGO_EM25XX_BUS_B ;
 scalar_t__ EM28XX_I2C_ALGO_EM2800 ;
 scalar_t__ EM28XX_I2C_ALGO_EM28XX ;
 int I2C_FUNC_I2C ;
 int I2C_FUNC_SMBUS_EMUL ;
 int I2C_FUNC_SMBUS_WRITE_BLOCK_DATA ;
 int WARN (int,char*) ;

__attribute__((used)) static u32 functionality(struct i2c_adapter *i2c_adap)
{
 struct em28xx_i2c_bus *i2c_bus = i2c_adap->algo_data;

 if (i2c_bus->algo_type == EM28XX_I2C_ALGO_EM28XX ||
     i2c_bus->algo_type == EM28XX_I2C_ALGO_EM25XX_BUS_B) {
  return I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL;
 } else if (i2c_bus->algo_type == EM28XX_I2C_ALGO_EM2800) {
  return (I2C_FUNC_I2C | I2C_FUNC_SMBUS_EMUL) &
   ~I2C_FUNC_SMBUS_WRITE_BLOCK_DATA;
 }

 WARN(1, "Unknown i2c bus algorithm.\n");
 return 0;
}
