
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
typedef int u16 ;
struct b43_wldev {scalar_t__ ktp; } ;


 int B43_SEC_KEYSIZE ;
 int B43_SHM_SHARED ;
 scalar_t__ B43_SHM_SH_KEYIDXBLOCK ;
 int b43_kidx_to_fw (struct b43_wldev*,int) ;
 int b43_shm_write16 (struct b43_wldev*,int ,scalar_t__,int) ;

__attribute__((used)) static void key_write(struct b43_wldev *dev,
        u8 index, u8 algorithm, const u8 *key)
{
 unsigned int i;
 u32 offset;
 u16 value;
 u16 kidx;


 kidx = b43_kidx_to_fw(dev, index);
 value = ((kidx << 4) | algorithm);
 b43_shm_write16(dev, B43_SHM_SHARED,
   B43_SHM_SH_KEYIDXBLOCK + (kidx * 2), value);


 offset = dev->ktp + (index * B43_SEC_KEYSIZE);
 for (i = 0; i < B43_SEC_KEYSIZE; i += 2) {
  value = key[i];
  value |= (u16) (key[i + 1]) << 8;
  b43_shm_write16(dev, B43_SHM_SHARED, offset + i, value);
 }
}
