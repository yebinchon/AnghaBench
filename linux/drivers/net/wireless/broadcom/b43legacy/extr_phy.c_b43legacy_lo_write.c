
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct b43legacy_wldev {int wl; } ;
struct b43legacy_lopair {int low; int high; } ;


 int B43legacy_PHY_G_LO_CONTROL ;
 int b43legacy_phy_write (struct b43legacy_wldev*,int ,int) ;
 int b43legacydbg (int ,char*,int,int) ;
 int dump_stack () ;

__attribute__((used)) static inline
void b43legacy_lo_write(struct b43legacy_wldev *dev,
   struct b43legacy_lopair *pair)
{
 u16 value;

 value = (u8)(pair->low);
 value |= ((u8)(pair->high)) << 8;
 b43legacy_phy_write(dev, B43legacy_PHY_G_LO_CONTROL, value);
}
