
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u16 ;
struct TYPE_7__ {TYPE_4__* chandef; struct b43_phy_n* n; } ;
struct b43_wldev {TYPE_3__ phy; } ;
struct TYPE_6__ {scalar_t__ center_freq; scalar_t__ channel_type; } ;
struct b43_phy_n {scalar_t__* txiqlocal_bestc; TYPE_2__ txiqlocal_chanspec; int txiqlocal_coeffsvalid; } ;
struct TYPE_8__ {TYPE_1__* chan; } ;
struct TYPE_5__ {scalar_t__ center_freq; } ;


 int B43_NTAB16 (int,int) ;
 int b43_ntab_read_bulk (struct b43_wldev*,int ,int,scalar_t__*) ;
 int b43_ntab_write_bulk (struct b43_wldev*,int ,int,scalar_t__*) ;
 scalar_t__ cfg80211_get_chandef_type (TYPE_4__*) ;

__attribute__((used)) static void b43_nphy_reapply_tx_cal_coeffs(struct b43_wldev *dev)
{
 struct b43_phy_n *nphy = dev->phy.n;
 u8 i;
 u16 buffer[7];
 bool equal = 1;

 if (!nphy->txiqlocal_coeffsvalid ||
     nphy->txiqlocal_chanspec.center_freq != dev->phy.chandef->chan->center_freq ||
     nphy->txiqlocal_chanspec.channel_type != cfg80211_get_chandef_type(dev->phy.chandef))
  return;

 b43_ntab_read_bulk(dev, B43_NTAB16(15, 80), 7, buffer);
 for (i = 0; i < 4; i++) {
  if (buffer[i] != nphy->txiqlocal_bestc[i]) {
   equal = 0;
   break;
  }
 }

 if (!equal) {
  b43_ntab_write_bulk(dev, B43_NTAB16(15, 80), 4,
     nphy->txiqlocal_bestc);
  for (i = 0; i < 4; i++)
   buffer[i] = 0;
  b43_ntab_write_bulk(dev, B43_NTAB16(15, 88), 4,
     buffer);
  b43_ntab_write_bulk(dev, B43_NTAB16(15, 85), 2,
     &nphy->txiqlocal_bestc[5]);
  b43_ntab_write_bulk(dev, B43_NTAB16(15, 93), 2,
     &nphy->txiqlocal_bestc[5]);
 }
}
