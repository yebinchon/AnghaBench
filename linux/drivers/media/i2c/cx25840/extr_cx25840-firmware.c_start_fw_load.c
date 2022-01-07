
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int cx25840_write (struct i2c_client*,int,int) ;

__attribute__((used)) static void start_fw_load(struct i2c_client *client)
{

 cx25840_write(client, 0x800, 0x00);
 cx25840_write(client, 0x801, 0x00);

 cx25840_write(client, 0x803, 0x0b);

 cx25840_write(client, 0x000, 0x20);
}
