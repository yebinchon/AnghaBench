
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct b43legacy_wldev {int dummy; } ;
struct b43legacy_plcp_hdr6 {int dummy; } ;
struct b43legacy_plcp_hdr4 {scalar_t__ data; } ;


 int B43legacy_SHM_SHARED ;
 scalar_t__ FCS_LEN ;
 int b43legacy_generate_plcp_hdr (struct b43legacy_plcp_hdr4*,scalar_t__,scalar_t__) ;
 int b43legacy_ram_write (struct b43legacy_wldev*,int,int) ;
 int b43legacy_shm_write16 (struct b43legacy_wldev*,int ,int,int) ;
 int le32_to_cpu (scalar_t__) ;

__attribute__((used)) static void b43legacy_write_template_common(struct b43legacy_wldev *dev,
         const u8 *data, u16 size,
         u16 ram_offset,
         u16 shm_size_offset, u8 rate)
{
 u32 i;
 u32 tmp;
 struct b43legacy_plcp_hdr4 plcp;

 plcp.data = 0;
 b43legacy_generate_plcp_hdr(&plcp, size + FCS_LEN, rate);
 b43legacy_ram_write(dev, ram_offset, le32_to_cpu(plcp.data));
 ram_offset += sizeof(u32);



 tmp = (u32)(data[0]) << 16;
 tmp |= (u32)(data[1]) << 24;
 b43legacy_ram_write(dev, ram_offset, tmp);
 ram_offset += sizeof(u32);
 for (i = 2; i < size; i += sizeof(u32)) {
  tmp = (u32)(data[i + 0]);
  if (i + 1 < size)
   tmp |= (u32)(data[i + 1]) << 8;
  if (i + 2 < size)
   tmp |= (u32)(data[i + 2]) << 16;
  if (i + 3 < size)
   tmp |= (u32)(data[i + 3]) << 24;
  b43legacy_ram_write(dev, ram_offset + i - 2, tmp);
 }
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, shm_size_offset,
         size + sizeof(struct b43legacy_plcp_hdr6));
}
