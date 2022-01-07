
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ETH_ALEN ;
 int ether_crc_le (int ,unsigned char const*) ;

__attribute__((used)) static inline unsigned int ioc3_hash(const unsigned char *addr)
{
 unsigned int temp = 0;
 int bits;
 u32 crc;

 crc = ether_crc_le(ETH_ALEN, addr);

 crc &= 0x3f;
 for (bits = 6; --bits >= 0; ) {
  temp <<= 1;
  temp |= (crc & 0x1);
  crc >>= 1;
 }

 return temp;
}
