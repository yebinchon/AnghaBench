
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SFDF_FLUSH_PER_NVE_AND_FID ;
 int MLXSW_REG_SFDF_LEN ;
 int mlxsw_reg_sfdf_fid_set (char*,int ) ;
 int mlxsw_reg_sfdf_pack (char*,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int sfdf ;

__attribute__((used)) static void mlxsw_sp_nve_fdb_flush_by_fid(struct mlxsw_sp *mlxsw_sp,
       u16 fid_index)
{
 char sfdf_pl[MLXSW_REG_SFDF_LEN];

 mlxsw_reg_sfdf_pack(sfdf_pl, MLXSW_REG_SFDF_FLUSH_PER_NVE_AND_FID);
 mlxsw_reg_sfdf_fid_set(sfdf_pl, fid_index);
 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(sfdf), sfdf_pl);
}
