
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;
struct sh_eth_private {scalar_t__ tsu_addr; } ;


 scalar_t__ SH_ETH_OFFSET_INVALID ;
 scalar_t__ WARN_ON (int) ;
 int iowrite32 (int ,scalar_t__) ;
 scalar_t__ sh_eth_tsu_get_offset (struct sh_eth_private*,int) ;

__attribute__((used)) static void sh_eth_tsu_write(struct sh_eth_private *mdp, u32 data,
        int enum_index)
{
 u16 offset = sh_eth_tsu_get_offset(mdp, enum_index);

 if (WARN_ON(offset == SH_ETH_OFFSET_INVALID))
  return;

 iowrite32(data, mdp->tsu_addr + offset);
}
