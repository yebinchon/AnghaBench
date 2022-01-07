
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ETH_ALEN ;

__attribute__((used)) static void nfp_eth_copy_mac_reverse(u8 *dst, const u8 *src)
{
 int i;

 for (i = 0; i < ETH_ALEN; i++)
  dst[ETH_ALEN - i - 1] = src[i];
}
