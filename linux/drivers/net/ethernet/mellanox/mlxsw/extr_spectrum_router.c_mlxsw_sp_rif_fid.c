
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp_rif {struct mlxsw_sp_fid* fid; } ;
struct mlxsw_sp_fid {int dummy; } ;



struct mlxsw_sp_fid *mlxsw_sp_rif_fid(const struct mlxsw_sp_rif *rif)
{
 return rif->fid;
}
