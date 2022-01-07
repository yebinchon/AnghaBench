
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43legacy_wldev {int dummy; } ;


 int B43legacy_SHM_SHARED ;
 int B43legacy_SHM_SH_HOSTFHI ;
 int B43legacy_SHM_SH_HOSTFLO ;
 int b43legacy_shm_read16 (struct b43legacy_wldev*,int ,int ) ;

u32 b43legacy_hf_read(struct b43legacy_wldev *dev)
{
 u32 ret;

 ret = b43legacy_shm_read16(dev, B43legacy_SHM_SHARED,
       B43legacy_SHM_SH_HOSTFHI);
 ret <<= 16;
 ret |= b43legacy_shm_read16(dev, B43legacy_SHM_SHARED,
        B43legacy_SHM_SH_HOSTFLO);

 return ret;
}
