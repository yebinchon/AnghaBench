
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ETH_ALEN ;
 int inverse_every_nibble (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int nibble_swap_every_byte (unsigned char*) ;

__attribute__((used)) static u32 hash_function(unsigned char *mac_addr_orig)
{
 u32 hash_result;
 u32 addr0;
 u32 addr1;
 u32 addr2;
 u32 addr3;
 unsigned char mac_addr[ETH_ALEN];




 memcpy(mac_addr, mac_addr_orig, ETH_ALEN);

 nibble_swap_every_byte(mac_addr);
 inverse_every_nibble(mac_addr);

 addr0 = (mac_addr[5] >> 2) & 0x3f;
 addr1 = (mac_addr[5] & 0x03) | (((mac_addr[4] & 0x7f)) << 2);
 addr2 = ((mac_addr[4] & 0x80) >> 7) | mac_addr[3] << 1;
 addr3 = (mac_addr[2] & 0xff) | ((mac_addr[1] & 1) << 8);

 hash_result = (addr0 << 9) | (addr1 ^ addr2 ^ addr3);
 hash_result = hash_result & 0x07ff;
 return hash_result;
}
