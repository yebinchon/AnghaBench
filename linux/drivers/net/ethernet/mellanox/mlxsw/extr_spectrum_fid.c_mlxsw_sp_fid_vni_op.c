
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct mlxsw_sp {int core; } ;
typedef int __be32 ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_SFMR_LEN ;
 int MLXSW_REG_SFMR_OP_CREATE_FID ;
 int be32_to_cpu (int ) ;
 int mlxsw_reg_sfmr_nve_tunnel_flood_ptr_set (char*,int ) ;
 int mlxsw_reg_sfmr_pack (char*,int ,int ,int ) ;
 int mlxsw_reg_sfmr_vni_set (char*,int ) ;
 int mlxsw_reg_sfmr_vtfp_set (char*,int) ;
 int mlxsw_reg_sfmr_vv_set (char*,int) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int sfmr ;

__attribute__((used)) static int mlxsw_sp_fid_vni_op(struct mlxsw_sp *mlxsw_sp, u16 fid_index,
          __be32 vni, bool vni_valid, u32 nve_flood_index,
          bool nve_flood_index_valid)
{
 char sfmr_pl[MLXSW_REG_SFMR_LEN];

 mlxsw_reg_sfmr_pack(sfmr_pl, MLXSW_REG_SFMR_OP_CREATE_FID, fid_index,
       0);
 mlxsw_reg_sfmr_vv_set(sfmr_pl, vni_valid);
 mlxsw_reg_sfmr_vni_set(sfmr_pl, be32_to_cpu(vni));
 mlxsw_reg_sfmr_vtfp_set(sfmr_pl, nve_flood_index_valid);
 mlxsw_reg_sfmr_nve_tunnel_flood_ptr_set(sfmr_pl, nve_flood_index);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(sfmr), sfmr_pl);
}
