
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;





 int b43_radio_set (struct b43_wldev*,int,int) ;
 int b43_radio_write (struct b43_wldev*,int const,int) ;

__attribute__((used)) static void b43_phy_ht_tssi_setup(struct b43_wldev *dev)
{
 static const u16 routing[] = { 130, 129, 128, };
 int core;


 for (core = 0; core < 3; core++) {
  b43_radio_set(dev, 0x8bf, 0x1);
  b43_radio_write(dev, routing[core] | 0x0159, 0x0011);
 }
}
