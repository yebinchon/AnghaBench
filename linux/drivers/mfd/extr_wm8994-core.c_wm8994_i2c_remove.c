
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8994 {int dummy; } ;
struct i2c_client {int dummy; } ;


 struct wm8994* i2c_get_clientdata (struct i2c_client*) ;
 int wm8994_device_exit (struct wm8994*) ;

__attribute__((used)) static int wm8994_i2c_remove(struct i2c_client *i2c)
{
 struct wm8994 *wm8994 = i2c_get_clientdata(i2c);

 wm8994_device_exit(wm8994);

 return 0;
}
