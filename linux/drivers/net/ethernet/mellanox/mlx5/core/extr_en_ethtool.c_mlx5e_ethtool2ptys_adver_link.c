
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {scalar_t__* advertised; } ;


 size_t MLX5E_LINK_MODES_NUMBER ;
 size_t MLX5E_PROT_MASK (size_t) ;
 int __ETHTOOL_LINK_MODE_MASK_NBITS ;
 scalar_t__ bitmap_intersects (scalar_t__*,unsigned long const*,int ) ;
 TYPE_1__* ptys2legacy_ethtool_table ;

__attribute__((used)) static u32 mlx5e_ethtool2ptys_adver_link(const unsigned long *link_modes)
{
 u32 i, ptys_modes = 0;

 for (i = 0; i < MLX5E_LINK_MODES_NUMBER; ++i) {
  if (*ptys2legacy_ethtool_table[i].advertised == 0)
   continue;
  if (bitmap_intersects(ptys2legacy_ethtool_table[i].advertised,
          link_modes,
          __ETHTOOL_LINK_MODE_MASK_NBITS))
   ptys_modes |= MLX5E_PROT_MASK(i);
 }

 return ptys_modes;
}
