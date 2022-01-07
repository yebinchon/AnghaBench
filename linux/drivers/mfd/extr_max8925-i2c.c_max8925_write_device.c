
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int i2c_master_send (struct i2c_client*,unsigned char*,int) ;
 int memcpy (unsigned char*,void*,int) ;

__attribute__((used)) static inline int max8925_write_device(struct i2c_client *i2c,
           int reg, int bytes, void *src)
{
 unsigned char buf[9];
 int ret;

 buf[0] = (unsigned char)reg;
 memcpy(&buf[1], src, bytes);

 ret = i2c_master_send(i2c, buf, bytes + 1);
 if (ret < 0)
  return ret;
 return 0;
}
