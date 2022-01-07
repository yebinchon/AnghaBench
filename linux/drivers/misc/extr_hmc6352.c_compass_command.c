
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dev; } ;


 int dev_warn (int *,char*,int ) ;
 int i2c_master_send (struct i2c_client*,int *,int) ;

__attribute__((used)) static int compass_command(struct i2c_client *c, u8 cmd)
{
 int ret = i2c_master_send(c, &cmd, 1);
 if (ret < 0)
  dev_warn(&c->dev, "command '%c' failed.\n", cmd);
 return ret;
}
