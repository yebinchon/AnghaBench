
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int REG_CMDBUF0_ADDR ;
 int REG_CMDRD_ADDRH ;
 int REG_CMDRD_ADDRL ;
 int s5k4ecgx_i2c_read (struct i2c_client*,int ,int*) ;
 int s5k4ecgx_i2c_write (struct i2c_client*,int ,int) ;

__attribute__((used)) static int s5k4ecgx_read(struct i2c_client *client, u32 addr, u16 *val)
{
 u16 high = addr >> 16, low = addr & 0xffff;
 int ret;

 ret = s5k4ecgx_i2c_write(client, REG_CMDRD_ADDRH, high);
 if (!ret)
  ret = s5k4ecgx_i2c_write(client, REG_CMDRD_ADDRL, low);
 if (!ret)
  ret = s5k4ecgx_i2c_read(client, REG_CMDBUF0_ADDR, val);

 return ret;
}
