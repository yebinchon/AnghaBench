
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct b43legacy_phy {int antenna_diversity; int type; int rev; } ;
struct b43legacy_wldev {TYPE_2__* dev; struct b43legacy_phy phy; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;




 int B43legacy_SHM_SHARED ;
 int B43legacy_UCODEFLAGS_OFFSET ;
 int B43legacy_UCODEFLAG_AUTODIV ;
 int B43legacy_WARN_ON (int) ;
 int b43legacy_phy_read (struct b43legacy_wldev*,int) ;
 int b43legacy_phy_write (struct b43legacy_wldev*,int,int) ;
 int b43legacy_shm_read32 (struct b43legacy_wldev*,int ,int ) ;
 int b43legacy_shm_write32 (struct b43legacy_wldev*,int ,int ,int) ;

void b43legacy_phy_set_antenna_diversity(struct b43legacy_wldev *dev)
{
 struct b43legacy_phy *phy = &dev->phy;
 u16 antennadiv;
 u16 offset;
 u16 value;
 u32 ucodeflags;

 antennadiv = phy->antenna_diversity;

 if (antennadiv == 0xFFFF)
  antennadiv = 3;
 B43legacy_WARN_ON(antennadiv > 3);

 ucodeflags = b43legacy_shm_read32(dev, B43legacy_SHM_SHARED,
       B43legacy_UCODEFLAGS_OFFSET);
 b43legacy_shm_write32(dev, B43legacy_SHM_SHARED,
         B43legacy_UCODEFLAGS_OFFSET,
         ucodeflags & ~B43legacy_UCODEFLAG_AUTODIV);

 switch (phy->type) {
 case 128:
  offset = 0x0400;

  if (antennadiv == 2)
   value = (3 << 7);
  else
   value = (antennadiv << 7);
  b43legacy_phy_write(dev, offset + 1,
        (b43legacy_phy_read(dev, offset + 1)
        & 0x7E7F) | value);

  if (antennadiv >= 2) {
   if (antennadiv == 2)
    value = (antennadiv << 7);
   else
    value = (0 << 7);
   b43legacy_phy_write(dev, offset + 0x2B,
         (b43legacy_phy_read(dev,
         offset + 0x2B)
         & 0xFEFF) | value);
  }

  if (phy->type == 128) {
   if (antennadiv >= 2)
    b43legacy_phy_write(dev, 0x048C,
          b43legacy_phy_read(dev,
          0x048C) | 0x2000);
   else
    b43legacy_phy_write(dev, 0x048C,
          b43legacy_phy_read(dev,
          0x048C) & ~0x2000);
   if (phy->rev >= 2) {
    b43legacy_phy_write(dev, 0x0461,
          b43legacy_phy_read(dev,
          0x0461) | 0x0010);
    b43legacy_phy_write(dev, 0x04AD,
          (b43legacy_phy_read(dev,
          0x04AD)
          & 0x00FF) | 0x0015);
    if (phy->rev == 2)
     b43legacy_phy_write(dev, 0x0427,
           0x0008);
    else
     b43legacy_phy_write(dev, 0x0427,
      (b43legacy_phy_read(dev, 0x0427)
       & 0x00FF) | 0x0008);
   } else if (phy->rev >= 6)
    b43legacy_phy_write(dev, 0x049B, 0x00DC);
  } else {
   if (phy->rev < 3)
    b43legacy_phy_write(dev, 0x002B,
          (b43legacy_phy_read(dev,
          0x002B) & 0x00FF)
          | 0x0024);
   else {
    b43legacy_phy_write(dev, 0x0061,
          b43legacy_phy_read(dev,
          0x0061) | 0x0010);
    if (phy->rev == 3) {
     b43legacy_phy_write(dev, 0x0093,
           0x001D);
     b43legacy_phy_write(dev, 0x0027,
           0x0008);
    } else {
     b43legacy_phy_write(dev, 0x0093,
           0x003A);
     b43legacy_phy_write(dev, 0x0027,
      (b43legacy_phy_read(dev, 0x0027)
       & 0x00FF) | 0x0008);
    }
   }
  }
  break;
 case 129:
  if (dev->dev->id.revision == 2)
   value = (3 << 7);
  else
   value = (antennadiv << 7);
  b43legacy_phy_write(dev, 0x03E2,
        (b43legacy_phy_read(dev, 0x03E2)
        & 0xFE7F) | value);
  break;
 default:
  B43legacy_WARN_ON(1);
 }

 if (antennadiv >= 2) {
  ucodeflags = b43legacy_shm_read32(dev, B43legacy_SHM_SHARED,
        B43legacy_UCODEFLAGS_OFFSET);
  b43legacy_shm_write32(dev, B43legacy_SHM_SHARED,
          B43legacy_UCODEFLAGS_OFFSET,
          ucodeflags | B43legacy_UCODEFLAG_AUTODIV);
 }

 phy->antenna_diversity = antennadiv;
}
