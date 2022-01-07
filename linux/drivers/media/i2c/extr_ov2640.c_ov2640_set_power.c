
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov2640_priv {scalar_t__ resetb_gpio; scalar_t__ pwdn_gpio; } ;


 int gpiod_direction_output (scalar_t__,int) ;
 int gpiod_set_value (scalar_t__,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void ov2640_set_power(struct ov2640_priv *priv, int on)
{
}
