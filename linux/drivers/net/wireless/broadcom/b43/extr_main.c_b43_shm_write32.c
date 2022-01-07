
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct b43_wldev {int dummy; } ;


 int B43_MMIO_SHM_DATA ;
 int B43_MMIO_SHM_DATA_UNALIGNED ;
 scalar_t__ B43_SHM_SHARED ;
 int B43_WARN_ON (scalar_t__) ;
 int b43_shm_control_word (struct b43_wldev*,scalar_t__,scalar_t__) ;
 int b43_write16 (struct b43_wldev*,int ,int) ;
 int b43_write32 (struct b43_wldev*,int ,int) ;

void b43_shm_write32(struct b43_wldev *dev, u16 routing, u16 offset, u32 value)
{
 if (routing == B43_SHM_SHARED) {
  B43_WARN_ON(offset & 0x0001);
  if (offset & 0x0003) {

   b43_shm_control_word(dev, routing, offset >> 2);
   b43_write16(dev, B43_MMIO_SHM_DATA_UNALIGNED,
        value & 0xFFFF);
   b43_shm_control_word(dev, routing, (offset >> 2) + 1);
   b43_write16(dev, B43_MMIO_SHM_DATA,
        (value >> 16) & 0xFFFF);
   return;
  }
  offset >>= 2;
 }
 b43_shm_control_word(dev, routing, offset);
 b43_write32(dev, B43_MMIO_SHM_DATA, value);
}
