
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_phy {int txctl1; int rfatt; int bbatt; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;
struct b43legacy_lopair {int dummy; } ;


 struct b43legacy_lopair* b43legacy_find_lopair (struct b43legacy_wldev*,int ,int ,int ) ;

__attribute__((used)) static inline
struct b43legacy_lopair *b43legacy_current_lopair(struct b43legacy_wldev *dev)
{
 struct b43legacy_phy *phy = &dev->phy;

 return b43legacy_find_lopair(dev, phy->bbatt,
         phy->rfatt, phy->txctl1);
}
