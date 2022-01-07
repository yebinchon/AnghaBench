
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct phy_device {int dummy; } ;



__attribute__((used)) static int vsc85xx_dt_led_mode_get(struct phy_device *phydev,
       char *led,
       u8 default_mode)
{
 return default_mode;
}
