
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct i2c_client {int dummy; } ;


 int REG_CMDBUF0_ADDR ;
 int REG_CMDWR_ADDRL ;
 int s5k6aa_i2c_write (struct i2c_client*,int ,int ) ;

__attribute__((used)) static int s5k6aa_write(struct i2c_client *c, u16 addr, u16 val)
{
 int ret = s5k6aa_i2c_write(c, REG_CMDWR_ADDRL, addr);
 if (ret)
  return ret;
 return s5k6aa_i2c_write(c, REG_CMDBUF0_ADDR, val);
}
