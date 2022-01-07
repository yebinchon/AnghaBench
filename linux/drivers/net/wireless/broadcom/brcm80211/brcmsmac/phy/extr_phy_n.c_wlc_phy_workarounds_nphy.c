
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int phy_rev; } ;
struct brcms_phy {scalar_t__ phyhang_avoid; TYPE_1__ pubpi; int radio_chanspec; } ;


 scalar_t__ CHSPEC_IS5G (int ) ;
 int NPHY_ClassifierCtrl_cck_en ;
 int NPHY_IQFlip_ADC1 ;
 int NPHY_IQFlip_ADC2 ;
 scalar_t__ NREV_GE (int ,int) ;
 int or_phy_reg (struct brcms_phy*,int,int) ;
 int wlc_phy_classifier_nphy (struct brcms_phy*,int ,int) ;
 int wlc_phy_stay_in_carriersearch_nphy (struct brcms_phy*,int) ;
 int wlc_phy_workarounds_nphy_rev1 (struct brcms_phy*) ;
 int wlc_phy_workarounds_nphy_rev3 (struct brcms_phy*) ;
 int wlc_phy_workarounds_nphy_rev7 (struct brcms_phy*) ;

__attribute__((used)) static void wlc_phy_workarounds_nphy(struct brcms_phy *pi)
{
 if (CHSPEC_IS5G(pi->radio_chanspec))
  wlc_phy_classifier_nphy(pi, NPHY_ClassifierCtrl_cck_en, 0);
 else
  wlc_phy_classifier_nphy(pi, NPHY_ClassifierCtrl_cck_en, 1);

 if (pi->phyhang_avoid)
  wlc_phy_stay_in_carriersearch_nphy(pi, 1);

 or_phy_reg(pi, 0xb1, NPHY_IQFlip_ADC1 | NPHY_IQFlip_ADC2);

 if (NREV_GE(pi->pubpi.phy_rev, 7))
  wlc_phy_workarounds_nphy_rev7(pi);
 else if (NREV_GE(pi->pubpi.phy_rev, 3))
  wlc_phy_workarounds_nphy_rev3(pi);
 else
  wlc_phy_workarounds_nphy_rev1(pi);

 if (pi->phyhang_avoid)
  wlc_phy_stay_in_carriersearch_nphy(pi, 0);
}
