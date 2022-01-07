
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mlxsw_sp_fid {int dummy; } ;


 int br_fdb_clear_offload (struct net_device const*,int ) ;

__attribute__((used)) static void
mlxsw_sp_fid_8021d_fdb_clear_offload(const struct mlxsw_sp_fid *fid,
         const struct net_device *nve_dev)
{
 br_fdb_clear_offload(nve_dev, 0);
}
