
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_OFDMTAB_RSSI ;
 int b43_ofdmtab_write16 (struct b43_wldev*,int ,int,int) ;

__attribute__((used)) static void b43_wa_rssi_lt(struct b43_wldev *dev)
{
 int i;

 if (0 ) {
  for (i = 0; i < 8; i++)
   b43_ofdmtab_write16(dev, B43_OFDMTAB_RSSI, i, i + 8);
  for (i = 8; i < 16; i++)
   b43_ofdmtab_write16(dev, B43_OFDMTAB_RSSI, i, i - 8);
 } else {
  for (i = 0; i < 64; i++)
   b43_ofdmtab_write16(dev, B43_OFDMTAB_RSSI, i, i);
 }
}
