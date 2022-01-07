
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_read_byte_data (struct i2c_client*,int ) ;

__attribute__((used)) static int i2c_reg_read(struct stmpe *stmpe, u8 reg)
{
 struct i2c_client *i2c = stmpe->client;

 return i2c_smbus_read_byte_data(i2c, reg);
}
