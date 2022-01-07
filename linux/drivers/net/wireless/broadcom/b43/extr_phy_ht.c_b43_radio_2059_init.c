
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int ARRAY_SIZE (int const*) ;



 int const R2059_RFPLL_MASTER ;
 int const R2059_RFPLL_MISC_CAL_RESETN ;
 int const R2059_XTAL_CONFIG2 ;
 int b43_radio_2057_rccal (struct b43_wldev*) ;
 int b43_radio_2059_init_pre (struct b43_wldev*) ;
 int b43_radio_2059_rcal (struct b43_wldev*) ;
 int b43_radio_mask (struct b43_wldev*,int const,int) ;
 int b43_radio_set (struct b43_wldev*,int const,int) ;
 int msleep (int) ;
 int r2059_upload_inittabs (struct b43_wldev*) ;

__attribute__((used)) static void b43_radio_2059_init(struct b43_wldev *dev)
{
 static const u16 routing[] = { 130, 129, 128 };
 int i;


 b43_radio_2059_init_pre(dev);

 r2059_upload_inittabs(dev);

 for (i = 0; i < ARRAY_SIZE(routing); i++)
  b43_radio_set(dev, routing[i] | 0x146, 0x3);



 b43_radio_set(dev, R2059_RFPLL_MISC_CAL_RESETN, 0x0078);
 b43_radio_set(dev, R2059_XTAL_CONFIG2, 0x0080);
 msleep(2);
 b43_radio_mask(dev, R2059_RFPLL_MISC_CAL_RESETN, ~0x0078);
 b43_radio_mask(dev, R2059_XTAL_CONFIG2, ~0x0080);

 if (1) {
  b43_radio_2059_rcal(dev);
  b43_radio_2057_rccal(dev);
 }

 b43_radio_mask(dev, R2059_RFPLL_MASTER, ~0x0008);
}
