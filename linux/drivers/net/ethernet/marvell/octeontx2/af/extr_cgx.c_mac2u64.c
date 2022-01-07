
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int ETH_ALEN ;

__attribute__((used)) static u64 mac2u64 (u8 *mac_addr)
{
 u64 mac = 0;
 int index;

 for (index = ETH_ALEN - 1; index >= 0; index--)
  mac |= ((u64)*mac_addr++) << (8 * index);
 return mac;
}
