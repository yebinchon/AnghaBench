
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stimx274 {int reset_gpio; } ;


 int IMX274_RESET_DELAY1 ;
 int IMX274_RESET_DELAY2 ;
 int gpiod_set_value_cansleep (int ,int) ;
 int usleep_range (int ,int ) ;

__attribute__((used)) static void imx274_reset(struct stimx274 *priv, int rst)
{
 gpiod_set_value_cansleep(priv->reset_gpio, 0);
 usleep_range(IMX274_RESET_DELAY1, IMX274_RESET_DELAY2);
 gpiod_set_value_cansleep(priv->reset_gpio, !!rst);
 usleep_range(IMX274_RESET_DELAY1, IMX274_RESET_DELAY2);
}
