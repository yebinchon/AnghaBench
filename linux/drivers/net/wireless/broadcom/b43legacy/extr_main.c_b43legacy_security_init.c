
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43legacy_wldev {int max_nr_keys; int ktp; TYPE_2__* dev; int key; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int ARRAY_SIZE (int ) ;
 int B43legacy_MMIO_RCMTA_COUNT ;
 int B43legacy_SHM_SHARED ;
 int B43legacy_WARN_ON (int) ;
 int b43legacy_shm_read16 (struct b43legacy_wldev*,int ,int) ;
 int b43legacy_write16 (struct b43legacy_wldev*,int ,int) ;

__attribute__((used)) static void b43legacy_security_init(struct b43legacy_wldev *dev)
{
 dev->max_nr_keys = (dev->dev->id.revision >= 5) ? 58 : 20;
 B43legacy_WARN_ON(dev->max_nr_keys > ARRAY_SIZE(dev->key));
 dev->ktp = b43legacy_shm_read16(dev, B43legacy_SHM_SHARED,
     0x0056);



 dev->ktp *= 2;
 if (dev->dev->id.revision >= 5)

  b43legacy_write16(dev, B43legacy_MMIO_RCMTA_COUNT,
      dev->max_nr_keys - 8);
}
