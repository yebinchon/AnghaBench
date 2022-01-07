
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct b43legacy_wldev {TYPE_1__ phy; } ;


 int B43legacy_BUG_ON (int) ;
 int B43legacy_CCK_RATE_11MB ;
 int B43legacy_CCK_RATE_1MB ;
 int B43legacy_CCK_RATE_2MB ;
 int B43legacy_CCK_RATE_5MB ;
 int B43legacy_OFDM_RATE_12MB ;
 int B43legacy_OFDM_RATE_18MB ;
 int B43legacy_OFDM_RATE_24MB ;
 int B43legacy_OFDM_RATE_36MB ;
 int B43legacy_OFDM_RATE_48MB ;
 int B43legacy_OFDM_RATE_54MB ;
 int B43legacy_OFDM_RATE_6MB ;


 int b43legacy_rate_memory_write (struct b43legacy_wldev*,int ,int) ;

__attribute__((used)) static void b43legacy_rate_memory_init(struct b43legacy_wldev *dev)
{
 switch (dev->phy.type) {
 case 128:
  b43legacy_rate_memory_write(dev, B43legacy_OFDM_RATE_6MB, 1);
  b43legacy_rate_memory_write(dev, B43legacy_OFDM_RATE_12MB, 1);
  b43legacy_rate_memory_write(dev, B43legacy_OFDM_RATE_18MB, 1);
  b43legacy_rate_memory_write(dev, B43legacy_OFDM_RATE_24MB, 1);
  b43legacy_rate_memory_write(dev, B43legacy_OFDM_RATE_36MB, 1);
  b43legacy_rate_memory_write(dev, B43legacy_OFDM_RATE_48MB, 1);
  b43legacy_rate_memory_write(dev, B43legacy_OFDM_RATE_54MB, 1);

 case 129:
  b43legacy_rate_memory_write(dev, B43legacy_CCK_RATE_1MB, 0);
  b43legacy_rate_memory_write(dev, B43legacy_CCK_RATE_2MB, 0);
  b43legacy_rate_memory_write(dev, B43legacy_CCK_RATE_5MB, 0);
  b43legacy_rate_memory_write(dev, B43legacy_CCK_RATE_11MB, 0);
  break;
 default:
  B43legacy_BUG_ON(1);
 }
}
