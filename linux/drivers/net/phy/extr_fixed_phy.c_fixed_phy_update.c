
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link; } ;
struct fixed_phy {scalar_t__ link_gpiod; TYPE_1__ status; int no_carrier; } ;


 int gpiod_get_value_cansleep (scalar_t__) ;

__attribute__((used)) static void fixed_phy_update(struct fixed_phy *fp)
{
 if (!fp->no_carrier && fp->link_gpiod)
  fp->status.link = !!gpiod_get_value_cansleep(fp->link_gpiod);
}
