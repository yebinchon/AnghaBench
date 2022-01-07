
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_LPPHY_A_PHY_CTL_ADDR ;
 int B43_LPPHY_SMPL_PLAY_BUFFER_CTL ;
 int B43_LPPHY_SMPL_PLAY_COUNT ;
 int b43_phy_maskset (struct b43_wldev*,int ,int,int) ;
 int b43_phy_set (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void lpphy_run_samples(struct b43_wldev *dev, u16 samples, u16 loops,
         u16 wait)
{
 b43_phy_maskset(dev, B43_LPPHY_SMPL_PLAY_BUFFER_CTL,
   0xFFC0, samples - 1);
 if (loops != 0xFFFF)
  loops--;
 b43_phy_maskset(dev, B43_LPPHY_SMPL_PLAY_COUNT, 0xF000, loops);
 b43_phy_maskset(dev, B43_LPPHY_SMPL_PLAY_BUFFER_CTL, 0x3F, wait << 6);
 b43_phy_set(dev, B43_LPPHY_A_PHY_CTL_ADDR, 0x1);
}
