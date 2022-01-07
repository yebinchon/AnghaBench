
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_info (int *,char*) ;
 scalar_t__ write_reg (struct i2c_client*,int,int) ;

__attribute__((used)) static int write_regs(struct i2c_client *client, u8 *regs)
{
 int i;

 for (i = 0; !((regs[i] == 0x00) && (regs[i+1] == 0x00)); i += 2) {
  if (write_reg(client, regs[i], regs[i+1]) < 0) {
   dev_info(&client->dev, "failed\n");
   return -1;
  }
 }
 return 0;
}
