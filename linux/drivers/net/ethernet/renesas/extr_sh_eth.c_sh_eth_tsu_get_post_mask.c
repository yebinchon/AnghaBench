
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 sh_eth_tsu_get_post_mask(int entry)
{
 return 0x0f << (28 - ((entry % 8) * 4));
}
