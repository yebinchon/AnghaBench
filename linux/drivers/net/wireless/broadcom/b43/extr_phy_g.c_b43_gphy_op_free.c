
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_g {int dyn_tssi_tbl; struct b43_phy_g* tssi2dbm; struct b43_phy_g* lo_control; } ;


 int kfree (struct b43_phy_g*) ;

__attribute__((used)) static void b43_gphy_op_free(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_g *gphy = phy->g;

 kfree(gphy->lo_control);

 if (gphy->dyn_tssi_tbl)
  kfree(gphy->tssi2dbm);
 gphy->dyn_tssi_tbl = 0;
 gphy->tssi2dbm = ((void*)0);

 kfree(gphy);
 dev->phy.g = ((void*)0);
}
