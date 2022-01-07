
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp1_mr_tcam_region {int rtar_key_type; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_RRCR_LEN ;
 int MLXSW_REG_RRCR_OP_MOVE ;
 int mlxsw_reg_rrcr_pack (char*,int ,unsigned long,unsigned long,int ,unsigned long) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int rrcr ;

__attribute__((used)) static void mlxsw_sp1_mr_tcam_region_parman_move(void *priv,
       unsigned long from_index,
       unsigned long to_index,
       unsigned long count)
{
 struct mlxsw_sp1_mr_tcam_region *mr_tcam_region = priv;
 struct mlxsw_sp *mlxsw_sp = mr_tcam_region->mlxsw_sp;
 char rrcr_pl[MLXSW_REG_RRCR_LEN];

 mlxsw_reg_rrcr_pack(rrcr_pl, MLXSW_REG_RRCR_OP_MOVE,
       from_index, count,
       mr_tcam_region->rtar_key_type, to_index);
 mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(rrcr), rrcr_pl);
}
