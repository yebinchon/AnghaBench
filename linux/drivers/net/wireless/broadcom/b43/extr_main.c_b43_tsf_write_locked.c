
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct b43_wldev {TYPE_1__* dev; } ;
struct TYPE_2__ {int core_rev; } ;


 int B43_MMIO_REV3PLUS_TSF_HIGH ;
 int B43_MMIO_REV3PLUS_TSF_LOW ;
 int B43_WARN_ON (int) ;
 int b43_write32 (struct b43_wldev*,int ,int) ;

__attribute__((used)) static void b43_tsf_write_locked(struct b43_wldev *dev, u64 tsf)
{
 u32 low, high;

 B43_WARN_ON(dev->dev->core_rev < 3);

 low = tsf;
 high = (tsf >> 32);


 b43_write32(dev, B43_MMIO_REV3PLUS_TSF_LOW, low);
 b43_write32(dev, B43_MMIO_REV3PLUS_TSF_HIGH, high);
}
