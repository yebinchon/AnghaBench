
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mlxsw_sp_acl_tcam_region {int tcam_region_info; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PRCR_LEN ;
 int MLXSW_REG_PRCR_OP_MOVE ;
 int mlxsw_reg_prcr_pack (char*,int ,int ,int ,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int prcr ;

__attribute__((used)) static void
mlxsw_sp_acl_ctcam_region_move(struct mlxsw_sp *mlxsw_sp,
          struct mlxsw_sp_acl_tcam_region *region,
          u16 src_offset, u16 dst_offset, u16 size)
{
 char prcr_pl[MLXSW_REG_PRCR_LEN];

 mlxsw_reg_prcr_pack(prcr_pl, MLXSW_REG_PRCR_OP_MOVE,
       region->tcam_region_info, src_offset,
       region->tcam_region_info, dst_offset, size);
 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(prcr), prcr_pl);
}
