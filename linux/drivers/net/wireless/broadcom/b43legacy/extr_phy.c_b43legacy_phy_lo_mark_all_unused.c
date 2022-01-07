
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_phy {struct b43legacy_lopair* _lo_pairs; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;
struct b43legacy_lopair {scalar_t__ used; } ;


 int B43legacy_LO_COUNT ;

void b43legacy_phy_lo_mark_all_unused(struct b43legacy_wldev *dev)
{
 struct b43legacy_phy *phy = &dev->phy;
 struct b43legacy_lopair *pair;
 int i;

 for (i = 0; i < B43legacy_LO_COUNT; i++) {
  pair = phy->_lo_pairs + i;
  pair->used = 0;
 }
}
