
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_msg {int dummy; } ;
struct i2c_client {int adapter; } ;


 int EIO ;
 int i2c_transfer (int ,struct i2c_msg*,int) ;

__attribute__((used)) static int saa7706h_i2c_transfer(struct i2c_client *client,
 struct i2c_msg *msgs, int num)
{
 int err = i2c_transfer(client->adapter, msgs, num);
 if (err == num)
  return 0;
 return err > 0 ? -EIO : err;
}
