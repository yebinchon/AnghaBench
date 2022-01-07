
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_2__ {unsigned long* supported; } ;
struct ethtool_link_ksettings {TYPE_1__ link_modes; } ;


 int Pause ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,unsigned long*,int ) ;
 int ptys2ethtool_supported_link (struct mlx5_core_dev*,unsigned long*,int ) ;

__attribute__((used)) static void get_supported(struct mlx5_core_dev *mdev, u32 eth_proto_cap,
     struct ethtool_link_ksettings *link_ksettings)
{
 unsigned long *supported = link_ksettings->link_modes.supported;
 ptys2ethtool_supported_link(mdev, supported, eth_proto_cap);

 ethtool_link_ksettings_add_link_mode(link_ksettings, supported, Pause);
}
