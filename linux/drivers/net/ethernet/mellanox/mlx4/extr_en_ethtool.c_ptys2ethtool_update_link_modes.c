
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef enum ethtool_report { ____Placeholder_ethtool_report } ethtool_report ;


 int MLX4_LINK_MODES_SZ ;
 int MLX4_PROT_MASK (int) ;
 int __ETHTOOL_LINK_MODE_MASK_NBITS ;
 int bitmap_or (unsigned long*,unsigned long*,int ,int ) ;
 int ptys2ethtool_link_mode (int *,int) ;
 int * ptys2ethtool_map ;

__attribute__((used)) static void ptys2ethtool_update_link_modes(unsigned long *link_modes,
        u32 eth_proto,
        enum ethtool_report report)
{
 int i;
 for (i = 0; i < MLX4_LINK_MODES_SZ; i++) {
  if (eth_proto & MLX4_PROT_MASK(i))
   bitmap_or(link_modes, link_modes,
      ptys2ethtool_link_mode(&ptys2ethtool_map[i],
        report),
      __ETHTOOL_LINK_MODE_MASK_NBITS);
 }
}
