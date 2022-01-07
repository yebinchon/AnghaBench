
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {struct b43_phy_lp* lp; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct b43_phy_lp {int antenna; } ;


 int B43_ANTENNA_DEFAULT ;
 int memset (struct b43_phy_lp*,int ,int) ;

__attribute__((used)) static void b43_lpphy_op_prepare_structs(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_lp *lpphy = phy->lp;

 memset(lpphy, 0, sizeof(*lpphy));
 lpphy->antenna = B43_ANTENNA_DEFAULT;


}
