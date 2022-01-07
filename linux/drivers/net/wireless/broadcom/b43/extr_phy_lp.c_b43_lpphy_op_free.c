
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {int dummy; } ;


 int kfree (struct b43_phy_lp*) ;

__attribute__((used)) static void b43_lpphy_op_free(struct b43_wldev *dev)
{
 struct b43_phy_lp *lpphy = dev->phy.lp;

 kfree(lpphy);
 dev->phy.lp = ((void*)0);
}
