
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pi_lcnphy; } ;
struct brcms_phy {TYPE_1__ u; } ;


 int kfree (int ) ;

void wlc_phy_detach_lcnphy(struct brcms_phy *pi)
{
 kfree(pi->u.pi_lcnphy);
}
