
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy {int dummy; } ;


 int PHY_IPA (struct brcms_phy*) ;

bool wlc_phy_n_txpower_ipa_ison(struct brcms_phy *pi)
{
 return PHY_IPA(pi);
}
