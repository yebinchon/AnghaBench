
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct b43_wldev {int dummy; } ;


 int B43_MMIO_SHM_DATA ;
 int B43_MMIO_SHM_DATA_UNALIGNED ;
 scalar_t__ B43_SHM_SHARED ;
 int B43_WARN_ON (scalar_t__) ;
 scalar_t__ b43_read16 (struct b43_wldev*,int ) ;
 int b43_shm_control_word (struct b43_wldev*,scalar_t__,scalar_t__) ;

u16 b43_shm_read16(struct b43_wldev *dev, u16 routing, u16 offset)
{
 u16 ret;

 if (routing == B43_SHM_SHARED) {
  B43_WARN_ON(offset & 0x0001);
  if (offset & 0x0003) {

   b43_shm_control_word(dev, routing, offset >> 2);
   ret = b43_read16(dev, B43_MMIO_SHM_DATA_UNALIGNED);

   goto out;
  }
  offset >>= 2;
 }
 b43_shm_control_word(dev, routing, offset);
 ret = b43_read16(dev, B43_MMIO_SHM_DATA);
out:
 return ret;
}
