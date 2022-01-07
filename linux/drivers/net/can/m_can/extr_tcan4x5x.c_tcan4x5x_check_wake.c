
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcan4x5x_priv {scalar_t__ device_wake_gpio; scalar_t__ device_state_gpio; } ;


 int gpiod_get_value (scalar_t__) ;
 int gpiod_set_value (scalar_t__,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void tcan4x5x_check_wake(struct tcan4x5x_priv *priv)
{
 int wake_state = 0;

 if (priv->device_state_gpio)
  wake_state = gpiod_get_value(priv->device_state_gpio);

 if (priv->device_wake_gpio && wake_state) {
  gpiod_set_value(priv->device_wake_gpio, 0);
  usleep_range(5, 50);
  gpiod_set_value(priv->device_wake_gpio, 1);
 }
}
