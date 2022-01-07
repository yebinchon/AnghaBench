
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct b43_phy_lp* lp; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_lp {int crs_usr_disable; int crs_sys_disable; } ;


 int B43_LPPHY_CRSGAIN_CTL ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;

__attribute__((used)) static void lpphy_set_deaf(struct b43_wldev *dev, bool user)
{
 struct b43_phy_lp *lpphy = dev->phy.lp;

 if (user)
  lpphy->crs_usr_disable = 1;
 else
  lpphy->crs_sys_disable = 1;
 b43_phy_maskset(dev, B43_LPPHY_CRSGAIN_CTL, 0xFF1F, 0x80);
}
