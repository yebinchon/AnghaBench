
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct stmpe {struct i2c_client* client; } ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_read_i2c_block_data (struct i2c_client*,int ,int ,int *) ;

__attribute__((used)) static int i2c_block_read(struct stmpe *stmpe, u8 reg, u8 length, u8 *values)
{
 struct i2c_client *i2c = stmpe->client;

 return i2c_smbus_read_i2c_block_data(i2c, reg, length, values);
}
