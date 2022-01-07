
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcms_phy {int dummy; } ;


 int RADIO_DEFAULT_CORE ;
 int regs_2055 ;
 int wlc_phy_init_radio_regs (struct brcms_phy*,int ,int ) ;

__attribute__((used)) static void wlc_phy_radio_init_2055(struct brcms_phy *pi)
{
 wlc_phy_init_radio_regs(pi, regs_2055, RADIO_DEFAULT_CORE);
}
