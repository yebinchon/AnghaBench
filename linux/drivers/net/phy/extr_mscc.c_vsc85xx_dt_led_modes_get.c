
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vsc8531_private {int nleds; int* leds_mode; } ;
struct phy_device {struct vsc8531_private* priv; } ;


 int sprintf (char*,char*,int) ;
 int vsc85xx_dt_led_mode_get (struct phy_device*,char*,int ) ;

__attribute__((used)) static int vsc85xx_dt_led_modes_get(struct phy_device *phydev,
        u32 *default_mode)
{
 struct vsc8531_private *priv = phydev->priv;
 char led_dt_prop[28];
 int i, ret;

 for (i = 0; i < priv->nleds; i++) {
  ret = sprintf(led_dt_prop, "vsc8531,led-%d-mode", i);
  if (ret < 0)
   return ret;

  ret = vsc85xx_dt_led_mode_get(phydev, led_dt_prop,
           default_mode[i]);
  if (ret < 0)
   return ret;
  priv->leds_mode[i] = ret;
 }

 return 0;
}
