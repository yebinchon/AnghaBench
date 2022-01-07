
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct si470x_device {scalar_t__ gpio_reset; int videodev; } ;
struct i2c_client {int dummy; } ;


 int gpiod_set_value (scalar_t__,int ) ;
 struct si470x_device* i2c_get_clientdata (struct i2c_client*) ;
 int video_unregister_device (int *) ;

__attribute__((used)) static int si470x_i2c_remove(struct i2c_client *client)
{
 struct si470x_device *radio = i2c_get_clientdata(client);

 video_unregister_device(&radio->videodev);

 if (radio->gpio_reset)
  gpiod_set_value(radio->gpio_reset, 0);

 return 0;
}
