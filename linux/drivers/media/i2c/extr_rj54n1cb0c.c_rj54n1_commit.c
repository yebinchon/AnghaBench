
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int RJ54N1_INIT_START ;
 int msleep (int) ;
 int reg_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static int rj54n1_commit(struct i2c_client *client)
{
 int ret = reg_write(client, RJ54N1_INIT_START, 1);
 msleep(10);
 if (!ret)
  ret = reg_write(client, RJ54N1_INIT_START, 0);
 return ret;
}
