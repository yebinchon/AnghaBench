
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int __le32 ;



__attribute__((used)) static void iwl_flip_hw_address(__le32 mac_addr0, __le32 mac_addr1, u8 *dest)
{
 const u8 *hw_addr;

 hw_addr = (const u8 *)&mac_addr0;
 dest[0] = hw_addr[3];
 dest[1] = hw_addr[2];
 dest[2] = hw_addr[1];
 dest[3] = hw_addr[0];

 hw_addr = (const u8 *)&mac_addr1;
 dest[4] = hw_addr[1];
 dest[5] = hw_addr[0];
}
