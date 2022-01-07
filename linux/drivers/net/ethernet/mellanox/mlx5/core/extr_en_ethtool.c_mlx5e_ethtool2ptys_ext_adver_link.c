
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
typedef int modes ;
struct TYPE_2__ {scalar_t__* advertised; } ;


 size_t MLX5E_EXT_LINK_MODES_NUMBER ;
 size_t MLX5E_PROT_MASK (size_t) ;
 int __ETHTOOL_LINK_MODE_MASK_NBITS ;
 int bitmap_and (unsigned long*,scalar_t__*,unsigned long const*,int ) ;
 int memset (unsigned long*,int ,int) ;
 TYPE_1__* ptys2ext_ethtool_table ;

__attribute__((used)) static u32 mlx5e_ethtool2ptys_ext_adver_link(const unsigned long *link_modes)
{
 u32 i, ptys_modes = 0;
 unsigned long modes[2];

 for (i = 0; i < MLX5E_EXT_LINK_MODES_NUMBER; ++i) {
  if (*ptys2ext_ethtool_table[i].advertised == 0)
   continue;
  memset(modes, 0, sizeof(modes));
  bitmap_and(modes, ptys2ext_ethtool_table[i].advertised,
      link_modes, __ETHTOOL_LINK_MODE_MASK_NBITS);

  if (modes[0] == ptys2ext_ethtool_table[i].advertised[0] &&
      modes[1] == ptys2ext_ethtool_table[i].advertised[1])
   ptys_modes |= MLX5E_PROT_MASK(i);
 }
 return ptys_modes;
}
