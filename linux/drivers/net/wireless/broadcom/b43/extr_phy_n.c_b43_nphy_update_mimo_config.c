
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;
typedef int s32 ;


 int B43_NPHY_MIMOCFG ;
 int B43_NPHY_MIMOCFG_AUTO ;
 int B43_NPHY_MIMOCFG_GFMIX ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_nphy_update_mimo_config(struct b43_wldev *dev, s32 preamble)
{
 u16 mimocfg = b43_phy_read(dev, B43_NPHY_MIMOCFG);

 mimocfg |= B43_NPHY_MIMOCFG_AUTO;
 if (preamble == 1)
  mimocfg |= B43_NPHY_MIMOCFG_GFMIX;
 else
  mimocfg &= ~B43_NPHY_MIMOCFG_GFMIX;

 b43_phy_write(dev, B43_NPHY_MIMOCFG, mimocfg);
}
