
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy {int dummy; } ;


 int wlc_radio_2064_init (struct brcms_phy*) ;

__attribute__((used)) static void wlc_lcnphy_radio_init(struct brcms_phy *pi)
{
 wlc_radio_2064_init(pi);
}
