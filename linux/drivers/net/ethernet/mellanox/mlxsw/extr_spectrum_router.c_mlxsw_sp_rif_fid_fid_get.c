
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_ext_ack {int dummy; } ;
struct mlxsw_sp_rif {int dev; int mlxsw_sp; } ;
struct mlxsw_sp_fid {int dummy; } ;


 struct mlxsw_sp_fid* mlxsw_sp_bridge_fid_get (int ,int ,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static struct mlxsw_sp_fid *
mlxsw_sp_rif_fid_fid_get(struct mlxsw_sp_rif *rif,
    struct netlink_ext_ack *extack)
{
 return mlxsw_sp_bridge_fid_get(rif->mlxsw_sp, rif->dev, 0, extack);
}
