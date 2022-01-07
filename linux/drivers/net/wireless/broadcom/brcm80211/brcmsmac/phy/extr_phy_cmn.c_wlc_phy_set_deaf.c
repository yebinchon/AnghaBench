
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy_pub {int dummy; } ;
struct brcms_phy {int dummy; } ;


 scalar_t__ ISLCNPHY (struct brcms_phy*) ;
 scalar_t__ ISNPHY (struct brcms_phy*) ;
 int wlc_lcnphy_deaf_mode (struct brcms_phy*,int) ;
 int wlc_nphy_deaf_mode (struct brcms_phy*,int) ;

void wlc_phy_set_deaf(struct brcms_phy_pub *ppi, bool user_flag)
{
 struct brcms_phy *pi;
 pi = (struct brcms_phy *) ppi;

 if (ISLCNPHY(pi))
  wlc_lcnphy_deaf_mode(pi, 1);
 else if (ISNPHY(pi))
  wlc_nphy_deaf_mode(pi, 1);
}
