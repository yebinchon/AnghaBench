
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sh_eth_private {int * reg_offset; } ;



__attribute__((used)) static u16 sh_eth_tsu_get_offset(struct sh_eth_private *mdp, int enum_index)
{
 return mdp->reg_offset[enum_index];
}
