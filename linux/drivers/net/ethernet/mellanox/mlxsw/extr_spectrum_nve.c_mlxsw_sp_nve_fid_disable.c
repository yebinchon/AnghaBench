
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;
struct mlxsw_sp {int dummy; } ;
typedef int __be32 ;


 scalar_t__ WARN_ON (int) ;
 struct net_device* dev_get_by_index (int *,int) ;
 int dev_put (struct net_device*) ;
 int init_net ;
 int mlxsw_sp_fid_fdb_clear_offload (struct mlxsw_sp_fid*,struct net_device*) ;
 int mlxsw_sp_fid_index (struct mlxsw_sp_fid*) ;
 scalar_t__ mlxsw_sp_fid_nve_ifindex (struct mlxsw_sp_fid*,int*) ;
 scalar_t__ mlxsw_sp_fid_vni (struct mlxsw_sp_fid*,int *) ;
 int mlxsw_sp_fid_vni_clear (struct mlxsw_sp_fid*) ;
 int mlxsw_sp_nve_fdb_clear_offload (struct mlxsw_sp*,struct mlxsw_sp_fid*,struct net_device*,int ) ;
 int mlxsw_sp_nve_fdb_flush_by_fid (struct mlxsw_sp*,int ) ;
 int mlxsw_sp_nve_flood_ip_flush (struct mlxsw_sp*,struct mlxsw_sp_fid*) ;
 int mlxsw_sp_nve_tunnel_fini (struct mlxsw_sp*) ;

void mlxsw_sp_nve_fid_disable(struct mlxsw_sp *mlxsw_sp,
         struct mlxsw_sp_fid *fid)
{
 u16 fid_index = mlxsw_sp_fid_index(fid);
 struct net_device *nve_dev;
 int nve_ifindex;
 __be32 vni;

 mlxsw_sp_nve_flood_ip_flush(mlxsw_sp, fid);
 mlxsw_sp_nve_fdb_flush_by_fid(mlxsw_sp, fid_index);

 if (WARN_ON(mlxsw_sp_fid_nve_ifindex(fid, &nve_ifindex) ||
      mlxsw_sp_fid_vni(fid, &vni)))
  goto out;

 nve_dev = dev_get_by_index(&init_net, nve_ifindex);
 if (!nve_dev)
  goto out;

 mlxsw_sp_nve_fdb_clear_offload(mlxsw_sp, fid, nve_dev, vni);
 mlxsw_sp_fid_fdb_clear_offload(fid, nve_dev);

 dev_put(nve_dev);

out:
 mlxsw_sp_fid_vni_clear(fid);
 mlxsw_sp_nve_tunnel_fini(mlxsw_sp);
}
