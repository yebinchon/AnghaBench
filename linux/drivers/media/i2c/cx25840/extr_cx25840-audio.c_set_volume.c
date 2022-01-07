
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dummy; } ;


 int cx25840_write (struct i2c_client*,int,int) ;

__attribute__((used)) static void set_volume(struct i2c_client *client, int volume)
{
 int vol;


 vol = volume >> 9;




 if (vol <= 23) {
  vol = 0;
 } else {
  vol -= 23;
 }


 cx25840_write(client, 0x8d4, 228 - (vol * 2));
}
