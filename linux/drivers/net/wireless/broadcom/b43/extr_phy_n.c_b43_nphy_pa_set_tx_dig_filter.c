
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;
typedef int s16 ;


 int B43_PHY_N (int ) ;
 int b43_phy_write (struct b43_wldev*,int ,int const) ;

__attribute__((used)) static void b43_nphy_pa_set_tx_dig_filter(struct b43_wldev *dev, u16 offset,
       const s16 *filter)
{
 int i;

 offset = B43_PHY_N(offset);

 for (i = 0; i < 15; i++, offset++)
  b43_phy_write(dev, offset, filter[i]);
}
