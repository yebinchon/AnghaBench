
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct b43_wldev {int wl; } ;


 int B43_DBG_KEYS ;
 int B43_NR_GROUP_KEYS ;
 int B43_NR_PAIRWISE_KEYS ;
 int B43_SHM_SHARED ;
 int B43_SHM_SH_TKIPTSCTTAK ;
 int B43_WARN_ON (int) ;
 scalar_t__ b43_debug (struct b43_wldev*,int ) ;
 scalar_t__ b43_new_kidx_api (struct b43_wldev*) ;
 int b43_shm_write16 (struct b43_wldev*,int ,int,int) ;
 int b43dbg (int ,char*,int,int) ;
 int modparam_hwtkip ;

__attribute__((used)) static void rx_tkip_phase1_write(struct b43_wldev *dev, u8 index, u32 iv32,
  u16 *phase1key)
{
 unsigned int i;
 u32 offset;
 u8 pairwise_keys_start = B43_NR_GROUP_KEYS * 2;

 if (!modparam_hwtkip)
  return;

 if (b43_new_kidx_api(dev))
  pairwise_keys_start = B43_NR_GROUP_KEYS;

 B43_WARN_ON(index < pairwise_keys_start);





 index -= pairwise_keys_start;
 B43_WARN_ON(index >= B43_NR_PAIRWISE_KEYS);

 if (b43_debug(dev, B43_DBG_KEYS)) {
  b43dbg(dev->wl, "rx_tkip_phase1_write : idx 0x%x, iv32 0x%x\n",
    index, iv32);
 }

 offset = B43_SHM_SH_TKIPTSCTTAK + index * (10 + 4);
 for (i = 0; i < 10; i += 2) {
  b43_shm_write16(dev, B43_SHM_SHARED, offset + i,
    phase1key ? phase1key[i / 2] : 0);
 }
 b43_shm_write16(dev, B43_SHM_SHARED, offset + i, iv32);
 b43_shm_write16(dev, B43_SHM_SHARED, offset + i + 2, iv32 >> 16);
}
