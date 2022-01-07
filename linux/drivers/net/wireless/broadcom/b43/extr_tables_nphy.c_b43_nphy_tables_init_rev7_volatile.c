
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_7__ {int antswlut; } ;
struct TYPE_6__ {int antswlut; } ;
struct TYPE_8__ {TYPE_3__ ghz2; TYPE_2__ ghz5; } ;
struct ssb_sprom {TYPE_4__ fem; } ;
struct b43_wldev {int wl; TYPE_1__* dev; } ;
struct TYPE_5__ {struct ssb_sprom* bus_sprom; } ;


 int ARRAY_SIZE (int const*) ;
 int B43_NTAB8 (int,int) ;
 scalar_t__ NL80211_BAND_5GHZ ;
 scalar_t__ b43_current_band (int ) ;
 int b43_ntab_write (struct b43_wldev*,int ,int const) ;
 int b43err (int ,char*,int) ;

__attribute__((used)) static void b43_nphy_tables_init_rev7_volatile(struct b43_wldev *dev)
{
 struct ssb_sprom *sprom = dev->dev->bus_sprom;
 u8 antswlut;
 int core, offset, i;

 const int antswlut0_offsets[] = { 0, 4, 8, };
 const u8 antswlut0_values[][3] = {
  { 0x2, 0x12, 0x8 },
  { 0x2, 0x18, 0x2 },
 };

 if (b43_current_band(dev->wl) == NL80211_BAND_5GHZ)
  antswlut = sprom->fem.ghz5.antswlut;
 else
  antswlut = sprom->fem.ghz2.antswlut;

 switch (antswlut) {
 case 0:
  for (core = 0; core < 2; core++) {
   for (i = 0; i < ARRAY_SIZE(antswlut0_values[0]); i++) {
    offset = core ? 0x20 : 0x00;
    offset += antswlut0_offsets[i];
    b43_ntab_write(dev, B43_NTAB8(9, offset),
            antswlut0_values[core][i]);
   }
  }
  break;
 default:
  b43err(dev->wl, "Unsupported antswlut: %d\n", antswlut);
  break;
 }
}
