
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int ETH_ALEN ;

__attribute__((used)) static void ether_addr_copy_swap(u8 *dst, const u8 *src)
{
 int i;

 for (i = 0; i < ETH_ALEN; i++)
  dst[i] = src[ETH_ALEN - i - 1];
}
