
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int ETH_ALEN ;
 int ether_crc (int ,unsigned char const*) ;

__attribute__((used)) static void slic_set_mcast_bit(u64 *mcmask, unsigned char const *addr)
{
 u64 mask = *mcmask;
 u8 crc;




 crc = ether_crc(ETH_ALEN, addr) >> 23;

 crc &= 0x3F;
 mask |= (u64)1 << crc;
 *mcmask = mask;
}
