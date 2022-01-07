
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_phy {int type; int rev; } ;
struct b43legacy_wldev {int wl; struct b43legacy_phy phy; } ;




 int ENODEV ;
 int b43legacy_phy_initb2 (struct b43legacy_wldev*) ;
 int b43legacy_phy_initb4 (struct b43legacy_wldev*) ;
 int b43legacy_phy_initb5 (struct b43legacy_wldev*) ;
 int b43legacy_phy_initb6 (struct b43legacy_wldev*) ;
 int b43legacy_phy_initg (struct b43legacy_wldev*) ;
 int b43legacyerr (int ,char*) ;

int b43legacy_phy_init(struct b43legacy_wldev *dev)
{
 struct b43legacy_phy *phy = &dev->phy;
 int err = -ENODEV;

 switch (phy->type) {
 case 129:
  switch (phy->rev) {
  case 2:
   b43legacy_phy_initb2(dev);
   err = 0;
   break;
  case 4:
   b43legacy_phy_initb4(dev);
   err = 0;
   break;
  case 5:
   b43legacy_phy_initb5(dev);
   err = 0;
   break;
  case 6:
   b43legacy_phy_initb6(dev);
   err = 0;
   break;
  }
  break;
 case 128:
  b43legacy_phy_initg(dev);
  err = 0;
  break;
 }
 if (err)
  b43legacyerr(dev->wl, "Unknown PHYTYPE found\n");

 return err;
}
