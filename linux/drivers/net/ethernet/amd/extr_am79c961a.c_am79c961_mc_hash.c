
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;


 int ETH_ALEN ;
 int ether_crc_le (int ,char*) ;

__attribute__((used)) static void am79c961_mc_hash(char *addr, u16 *hash)
{
 int idx, bit;
 u32 crc;

 crc = ether_crc_le(ETH_ALEN, addr);

 idx = crc >> 30;
 bit = (crc >> 26) & 15;

 hash[idx] |= 1 << bit;
}
