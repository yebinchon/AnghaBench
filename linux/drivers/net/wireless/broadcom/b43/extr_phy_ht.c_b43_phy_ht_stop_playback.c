
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {struct b43_phy_ht* ht; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_phy_ht {scalar_t__* bb_mult_save; } ;


 int B43_HTTAB16 (int,int) ;
 int B43_PHY_HT_IQLOCAL_CMDGCTL ;
 int B43_PHY_HT_SAMP_CMD ;
 int B43_PHY_HT_SAMP_CMD_STOP ;
 int B43_PHY_HT_SAMP_STAT ;
 int b43_httab_write (struct b43_wldev*,int ,scalar_t__) ;
 int b43_phy_mask (struct b43_wldev*,int ,int) ;
 int b43_phy_read (struct b43_wldev*,int ) ;
 int b43_phy_set (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_phy_ht_stop_playback(struct b43_wldev *dev)
{
 struct b43_phy_ht *phy_ht = dev->phy.ht;
 u16 tmp;
 int i;

 tmp = b43_phy_read(dev, B43_PHY_HT_SAMP_STAT);
 if (tmp & 0x1)
  b43_phy_set(dev, B43_PHY_HT_SAMP_CMD, B43_PHY_HT_SAMP_CMD_STOP);
 else if (tmp & 0x2)
  b43_phy_mask(dev, B43_PHY_HT_IQLOCAL_CMDGCTL, 0x7FFF);

 b43_phy_mask(dev, B43_PHY_HT_SAMP_CMD, ~0x0004);

 for (i = 0; i < 3; i++) {
  if (phy_ht->bb_mult_save[i] >= 0) {
   b43_httab_write(dev, B43_HTTAB16(13, 0x63 + i * 4),
     phy_ht->bb_mult_save[i]);
   b43_httab_write(dev, B43_HTTAB16(13, 0x67 + i * 4),
     phy_ht->bb_mult_save[i]);
  }
 }
}
