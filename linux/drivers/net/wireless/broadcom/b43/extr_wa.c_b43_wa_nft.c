
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_phy {int rev; } ;
struct b43_wldev {struct b43_phy phy; } ;


 int B43_OFDMTAB_AGC2 ;
 int B43_TAB_NOISEG1_SIZE ;
 int B43_TAB_NOISEG2_SIZE ;
 int b43_ofdmtab_write16 (struct b43_wldev*,int ,int,int ) ;
 int * b43_tab_noiseg1 ;
 int * b43_tab_noiseg2 ;

__attribute__((used)) static void b43_wa_nft(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 int i;

 if (phy->rev == 1)
  for (i = 0; i < B43_TAB_NOISEG1_SIZE; i++)
   b43_ofdmtab_write16(dev, B43_OFDMTAB_AGC2, i,
         b43_tab_noiseg1[i]);
 else
  for (i = 0; i < B43_TAB_NOISEG2_SIZE; i++)
   b43_ofdmtab_write16(dev, B43_OFDMTAB_AGC2, i,
         b43_tab_noiseg2[i]);
}
