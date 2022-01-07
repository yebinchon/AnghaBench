
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;


 int ETH_ALEN ;

__attribute__((used)) static u64 ibmveth_encode_mac_addr(u8 *mac)
{
 int i;
 u64 encoded = 0;

 for (i = 0; i < ETH_ALEN; i++)
  encoded = (encoded << 8) | mac[i];

 return encoded;
}
