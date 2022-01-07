
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {struct b43_phy_ac* ac; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_ac {int dummy; } ;


 int kfree (struct b43_phy_ac*) ;

__attribute__((used)) static void b43_phy_ac_op_free(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_ac *phy_ac = phy->ac;

 kfree(phy_ac);
 phy->ac = ((void*)0);
}
