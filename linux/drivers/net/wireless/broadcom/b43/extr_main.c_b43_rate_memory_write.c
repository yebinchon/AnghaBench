
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_SHM_SHARED ;
 int b43_plcp_get_ratecode_cck (int) ;
 int b43_plcp_get_ratecode_ofdm (int) ;
 int b43_shm_read16 (struct b43_wldev*,int ,int) ;
 int b43_shm_write16 (struct b43_wldev*,int ,int,int ) ;

__attribute__((used)) static void b43_rate_memory_write(struct b43_wldev *dev, u16 rate, int is_ofdm)
{
 u16 offset;

 if (is_ofdm) {
  offset = 0x480;
  offset += (b43_plcp_get_ratecode_ofdm(rate) & 0x000F) * 2;
 } else {
  offset = 0x4C0;
  offset += (b43_plcp_get_ratecode_cck(rate) & 0x000F) * 2;
 }
 b43_shm_write16(dev, B43_SHM_SHARED, offset + 0x20,
   b43_shm_read16(dev, B43_SHM_SHARED, offset));
}
