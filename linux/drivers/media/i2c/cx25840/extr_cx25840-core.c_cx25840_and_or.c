
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
typedef int u16 ;
struct i2c_client {int dummy; } ;


 unsigned int cx25840_read (struct i2c_client*,int ) ;
 int cx25840_write (struct i2c_client*,int ,unsigned int) ;

int cx25840_and_or(struct i2c_client *client, u16 addr, unsigned int and_mask,
     u8 or_value)
{
 return cx25840_write(client, addr,
        (cx25840_read(client, addr) & and_mask) |
        or_value);
}
