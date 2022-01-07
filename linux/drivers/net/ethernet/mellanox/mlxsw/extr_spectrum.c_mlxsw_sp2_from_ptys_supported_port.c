
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mlxsw_sp {int dummy; } ;
struct ethtool_link_ksettings {int dummy; } ;


 int Backplane ;
 int FIBRE ;
 int ethtool_link_ksettings_add_link_mode (struct ethtool_link_ksettings*,int ,int ) ;
 int supported ;

__attribute__((used)) static void
mlxsw_sp2_from_ptys_supported_port(struct mlxsw_sp *mlxsw_sp,
       u32 ptys_eth_proto,
       struct ethtool_link_ksettings *cmd)
{
 ethtool_link_ksettings_add_link_mode(cmd, supported, FIBRE);
 ethtool_link_ksettings_add_link_mode(cmd, supported, Backplane);
}
