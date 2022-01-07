
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_client {int dummy; } ;


 int EIO ;
 int i2c_master_send (struct i2c_client*,int const*,int) ;

__attribute__((used)) static int saa7706h_i2c_send(struct i2c_client *client, const u8 *data, int len)
{
 int err = i2c_master_send(client, data, len);
 if (err == len)
  return 0;
 return err > 0 ? -EIO : err;
}
