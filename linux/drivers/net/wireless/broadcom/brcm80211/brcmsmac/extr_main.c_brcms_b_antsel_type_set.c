
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct brcms_hardware {TYPE_1__* band; int antsel_type; } ;
struct TYPE_2__ {int pi; } ;


 int wlc_phy_antsel_type_set (int ,int ) ;

void brcms_b_antsel_type_set(struct brcms_hardware *wlc_hw, u8 antsel_type)
{
 wlc_hw->antsel_type = antsel_type;


 wlc_phy_antsel_type_set(wlc_hw->band->pi, antsel_type);
}
