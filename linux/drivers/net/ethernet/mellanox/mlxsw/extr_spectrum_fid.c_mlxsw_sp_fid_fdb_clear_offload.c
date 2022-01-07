
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_fid_ops {int (* fdb_clear_offload ) (struct mlxsw_sp_fid const*,struct net_device const*) ;} ;
struct mlxsw_sp_fid_family {struct mlxsw_sp_fid_ops* ops; } ;
struct mlxsw_sp_fid {struct mlxsw_sp_fid_family* fid_family; } ;


 int stub1 (struct mlxsw_sp_fid const*,struct net_device const*) ;

void mlxsw_sp_fid_fdb_clear_offload(const struct mlxsw_sp_fid *fid,
        const struct net_device *nve_dev)
{
 struct mlxsw_sp_fid_family *fid_family = fid->fid_family;
 const struct mlxsw_sp_fid_ops *ops = fid_family->ops;

 if (ops->fdb_clear_offload)
  ops->fdb_clear_offload(fid, nve_dev);
}
