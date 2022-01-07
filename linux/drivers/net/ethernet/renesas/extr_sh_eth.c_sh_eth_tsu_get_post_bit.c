
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sh_eth_private {int port; } ;



__attribute__((used)) static u32 sh_eth_tsu_get_post_bit(struct sh_eth_private *mdp, int entry)
{
 return (0x08 >> (mdp->port << 1)) << (28 - ((entry % 8) * 4));
}
