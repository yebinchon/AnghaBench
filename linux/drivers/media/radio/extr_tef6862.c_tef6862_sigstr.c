
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;
typedef int buf ;


 int i2c_master_recv (struct i2c_client*,int*,int) ;

__attribute__((used)) static u16 tef6862_sigstr(struct i2c_client *client)
{
 u8 buf[4];
 int err = i2c_master_recv(client, buf, sizeof(buf));
 if (err == sizeof(buf))
  return buf[3] << 8;
 return 0;
}
