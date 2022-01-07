
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43_wldev {int dummy; } ;


 int B43_SHM_SHARED ;
 int B43_SHM_SH_JSSI0 ;
 int B43_SHM_SH_JSSI1 ;
 int b43_shm_write16 (struct b43_wldev*,int ,int ,int) ;

__attribute__((used)) static void b43_jssi_write(struct b43_wldev *dev, u32 jssi)
{
 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_JSSI0,
   (jssi & 0x0000FFFF));
 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_JSSI1,
   (jssi & 0xFFFF0000) >> 16);
}
