
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 int cx25840_read4 (struct i2c_client*,int ) ;
 int cx25840_write4 (struct i2c_client*,int ,int) ;

int cx25840_and_or4(struct i2c_client *client, u16 addr, u32 and_mask,
      u32 or_value)
{
 return cx25840_write4(client, addr,
         (cx25840_read4(client, addr) & and_mask) |
         or_value);
}
