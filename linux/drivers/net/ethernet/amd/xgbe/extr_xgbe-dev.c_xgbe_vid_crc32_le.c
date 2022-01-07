
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int __le16 ;


 int CRC32_POLY_LE ;
 int VLAN_VID_MASK ;
 int get_bitmask_order (int ) ;

__attribute__((used)) static u32 xgbe_vid_crc32_le(__le16 vid_le)
{
 u32 crc = ~0;
 u32 temp = 0;
 unsigned char *data = (unsigned char *)&vid_le;
 unsigned char data_byte = 0;
 int i, bits;

 bits = get_bitmask_order(VLAN_VID_MASK);
 for (i = 0; i < bits; i++) {
  if ((i % 8) == 0)
   data_byte = data[i / 8];

  temp = ((crc & 1) ^ data_byte) & 1;
  crc >>= 1;
  data_byte >>= 1;

  if (temp)
   crc ^= CRC32_POLY_LE;
 }

 return crc;
}
