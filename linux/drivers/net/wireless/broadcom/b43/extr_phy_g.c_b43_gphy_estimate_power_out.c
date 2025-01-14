
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct b43_phy_g* g; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_g {size_t tgt_idle_tssi; size_t cur_idle_tssi; size_t* tssi2dbm; } ;
typedef size_t s8 ;
typedef size_t s32 ;


 size_t clamp_val (size_t,int,int) ;

__attribute__((used)) static s8 b43_gphy_estimate_power_out(struct b43_wldev *dev, s8 tssi)
{
 struct b43_phy_g *gphy = dev->phy.g;
 s8 dbm;
 s32 tmp;

 tmp = (gphy->tgt_idle_tssi - gphy->cur_idle_tssi + tssi);
 tmp = clamp_val(tmp, 0x00, 0x3F);
 dbm = gphy->tssi2dbm[tmp];

 return dbm;
}
