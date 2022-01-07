
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int i2c_smbus_write_byte_data (struct i2c_client*,int const,int const) ;

__attribute__((used)) static int write_regs(struct i2c_client *client, const u8 *regs, u8 channel)
{
 int ret;
 int i;

 for (i = 0; regs[i] != 0xff; i += 2) {
  ret = i2c_smbus_write_byte_data(client,
    regs[i] | (channel << 6), regs[i + 1]);
  if (ret < 0)
   return ret;
 }
 return 0;
}
