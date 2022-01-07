
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct b43legacy_wldev {int dummy; } ;


 int B43legacy_SHM_SHARED ;
 int b43legacy_shm_read16 (struct b43legacy_wldev*,int ,int) ;
 int b43legacy_shm_write16 (struct b43legacy_wldev*,int ,int,int) ;

void b43legacy_radio_set_txantenna(struct b43legacy_wldev *dev, u32 val)
{
 u16 tmp;

 val <<= 8;
 tmp = b43legacy_shm_read16(dev, B43legacy_SHM_SHARED, 0x0022) & 0xFCFF;
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, 0x0022, tmp | val);
 tmp = b43legacy_shm_read16(dev, B43legacy_SHM_SHARED, 0x03A8) & 0xFCFF;
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, 0x03A8, tmp | val);
 tmp = b43legacy_shm_read16(dev, B43legacy_SHM_SHARED, 0x0054) & 0xFCFF;
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, 0x0054, tmp | val);
}
