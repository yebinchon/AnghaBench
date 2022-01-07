
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int __mt9v111_addr_space_select (struct i2c_client*,int ) ;
 int __mt9v111_read (struct i2c_client*,int ,int *) ;

__attribute__((used)) static int mt9v111_read(struct i2c_client *c, u8 addr_space, u8 reg, u16 *val)
{
 int ret;


 ret = __mt9v111_addr_space_select(c, addr_space);
 if (ret)
  return ret;

 ret = __mt9v111_read(c, reg, val);
 if (ret)
  return ret;

 return 0;
}
