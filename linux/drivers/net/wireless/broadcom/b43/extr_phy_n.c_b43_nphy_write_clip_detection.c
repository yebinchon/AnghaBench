
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_NPHY_C1_CLIP1THRES ;
 int B43_NPHY_C2_CLIP1THRES ;
 int b43_phy_write (struct b43_wldev*,int ,int const) ;

__attribute__((used)) static void b43_nphy_write_clip_detection(struct b43_wldev *dev,
       const u16 *clip_st)
{
 b43_phy_write(dev, B43_NPHY_C1_CLIP1THRES, clip_st[0]);
 b43_phy_write(dev, B43_NPHY_C2_CLIP1THRES, clip_st[1]);
}
