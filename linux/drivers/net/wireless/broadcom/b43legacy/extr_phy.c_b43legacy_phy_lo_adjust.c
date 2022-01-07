
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int dummy; } ;
struct b43legacy_lopair {int dummy; } ;


 struct b43legacy_lopair* b43legacy_current_lopair (struct b43legacy_wldev*) ;
 struct b43legacy_lopair* b43legacy_find_lopair (struct b43legacy_wldev*,int,int,int ) ;
 int b43legacy_lo_write (struct b43legacy_wldev*,struct b43legacy_lopair*) ;

void b43legacy_phy_lo_adjust(struct b43legacy_wldev *dev, int fixed)
{
 struct b43legacy_lopair *pair;

 if (fixed) {

  pair = b43legacy_find_lopair(dev, 2, 3, 0);
 } else
  pair = b43legacy_current_lopair(dev);
 b43legacy_lo_write(dev, pair);
}
