
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct brcms_phy {int dummy; } ;


 int LCNPHY_txgainctrlovrval1_pagain_ovr_val1_MASK ;
 int LCNPHY_txgainctrlovrval1_pagain_ovr_val1_SHIFT ;
 int read_phy_reg (struct brcms_phy*,int) ;

__attribute__((used)) static u16 wlc_lcnphy_get_pa_gain(struct brcms_phy *pi)
{
 u16 pa_gain;

 pa_gain = (read_phy_reg(pi, 0x4fb) &
     LCNPHY_txgainctrlovrval1_pagain_ovr_val1_MASK) >>
    LCNPHY_txgainctrlovrval1_pagain_ovr_val1_SHIFT;

 return pa_gain;
}
