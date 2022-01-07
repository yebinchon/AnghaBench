
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_sp_rif_type { ____Placeholder_mlxsw_sp_rif_type } mlxsw_sp_rif_type ;
typedef enum mlxsw_sp_fid_type { ____Placeholder_mlxsw_sp_fid_type } mlxsw_sp_fid_type ;


 int MLXSW_SP_FID_TYPE_8021D ;
 int MLXSW_SP_FID_TYPE_8021Q ;
 int MLXSW_SP_FID_TYPE_RFID ;
 int MLXSW_SP_RIF_TYPE_IPIP_LB ;
 scalar_t__ br_vlan_enabled (struct net_device const*) ;
 scalar_t__ is_vlan_dev (struct net_device const*) ;
 int mlxsw_sp_fid_type_rif_type (struct mlxsw_sp const*,int) ;
 scalar_t__ mlxsw_sp_netdev_ipip_type (struct mlxsw_sp const*,struct net_device const*,int *) ;
 scalar_t__ netif_is_bridge_master (struct net_device const*) ;
 struct net_device const* vlan_dev_real_dev (struct net_device const*) ;

__attribute__((used)) static enum mlxsw_sp_rif_type
mlxsw_sp_dev_rif_type(const struct mlxsw_sp *mlxsw_sp,
        const struct net_device *dev)
{
 enum mlxsw_sp_fid_type type;

 if (mlxsw_sp_netdev_ipip_type(mlxsw_sp, dev, ((void*)0)))
  return MLXSW_SP_RIF_TYPE_IPIP_LB;


 if (is_vlan_dev(dev) && netif_is_bridge_master(vlan_dev_real_dev(dev)))
  type = MLXSW_SP_FID_TYPE_8021Q;
 else if (netif_is_bridge_master(dev) && br_vlan_enabled(dev))
  type = MLXSW_SP_FID_TYPE_8021Q;
 else if (netif_is_bridge_master(dev))
  type = MLXSW_SP_FID_TYPE_8021D;
 else
  type = MLXSW_SP_FID_TYPE_RFID;

 return mlxsw_sp_fid_type_rif_type(mlxsw_sp, type);
}
