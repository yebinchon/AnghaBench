
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct i2c_adapter {int dummy; } ;


 scalar_t__ i2c_read (struct i2c_adapter*,int,int *) ;

__attribute__((used)) static int port_has_drxk(struct i2c_adapter *i2c, int port)
{
 u8 val;

 if (i2c_read(i2c, 0x29+port, &val) < 0)
  return 0;
 return 1;
}
