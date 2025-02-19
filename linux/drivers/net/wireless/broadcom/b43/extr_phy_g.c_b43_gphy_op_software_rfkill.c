
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct b43_phy {unsigned int channel; scalar_t__ gmode; scalar_t__ radio_on; struct b43_phy_g* g; } ;
struct b43_wldev {struct b43_phy phy; } ;
struct TYPE_2__ {int valid; int rfover; int rfoverval; } ;
struct b43_phy_g {TYPE_1__ radio_off_context; } ;


 int B43_PHY_RFOVER ;
 int B43_PHY_RFOVERVAL ;
 int b43_gphy_channel_switch (struct b43_wldev*,unsigned int,int) ;
 int b43_phy_read (struct b43_wldev*,int) ;
 int b43_phy_write (struct b43_wldev*,int,int) ;
 int might_sleep () ;

__attribute__((used)) static void b43_gphy_op_software_rfkill(struct b43_wldev *dev,
     bool blocked)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_g *gphy = phy->g;
 unsigned int channel;

 might_sleep();

 if (!blocked) {

  if (phy->radio_on)
   return;

  b43_phy_write(dev, 0x0015, 0x8000);
  b43_phy_write(dev, 0x0015, 0xCC00);
  b43_phy_write(dev, 0x0015, (phy->gmode ? 0x00C0 : 0x0000));
  if (gphy->radio_off_context.valid) {

   b43_phy_write(dev, B43_PHY_RFOVER,
          gphy->radio_off_context.rfover);
   b43_phy_write(dev, B43_PHY_RFOVERVAL,
          gphy->radio_off_context.rfoverval);
   gphy->radio_off_context.valid = 0;
  }
  channel = phy->channel;
  b43_gphy_channel_switch(dev, 6, 1);
  b43_gphy_channel_switch(dev, channel, 0);
 } else {

  u16 rfover, rfoverval;

  rfover = b43_phy_read(dev, B43_PHY_RFOVER);
  rfoverval = b43_phy_read(dev, B43_PHY_RFOVERVAL);
  gphy->radio_off_context.rfover = rfover;
  gphy->radio_off_context.rfoverval = rfoverval;
  gphy->radio_off_context.valid = 1;
  b43_phy_write(dev, B43_PHY_RFOVER, rfover | 0x008C);
  b43_phy_write(dev, B43_PHY_RFOVERVAL, rfoverval & 0xFF73);
 }
}
