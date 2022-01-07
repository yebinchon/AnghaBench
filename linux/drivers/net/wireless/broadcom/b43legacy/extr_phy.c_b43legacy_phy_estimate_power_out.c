
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_phy {size_t idle_tssi; int type; scalar_t__* tssi2dbm; scalar_t__ savedpctlreg; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;
typedef scalar_t__ s8 ;
typedef size_t s32 ;


 int B43legacy_BUG_ON (int) ;


 size_t clamp_val (size_t,int,int) ;

__attribute__((used)) static s8 b43legacy_phy_estimate_power_out(struct b43legacy_wldev *dev, s8 tssi)
{
 struct b43legacy_phy *phy = &dev->phy;
 s8 dbm = 0;
 s32 tmp;

 tmp = phy->idle_tssi;
 tmp += tssi;
 tmp -= phy->savedpctlreg;

 switch (phy->type) {
 case 129:
 case 128:
  tmp = clamp_val(tmp, 0x00, 0x3F);
  dbm = phy->tssi2dbm[tmp];
  break;
 default:
  B43legacy_BUG_ON(1);
 }

 return dbm;
}
