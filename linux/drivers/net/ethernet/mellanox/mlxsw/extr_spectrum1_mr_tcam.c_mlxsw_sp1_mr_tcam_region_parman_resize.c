
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u64 ;
struct mlxsw_sp1_mr_tcam_region {int rtar_key_type; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {int core; } ;


 int ACL_MAX_TCAM_RULES ;
 int EINVAL ;
 unsigned long MLXSW_CORE_RES_GET (int ,int ) ;
 int MLXSW_REG (int ) ;
 int MLXSW_REG_RTAR_LEN ;
 int MLXSW_REG_RTAR_OP_RESIZE ;
 int mlxsw_reg_rtar_pack (char*,int ,int ,unsigned long) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int rtar ;

__attribute__((used)) static int mlxsw_sp1_mr_tcam_region_parman_resize(void *priv,
        unsigned long new_count)
{
 struct mlxsw_sp1_mr_tcam_region *mr_tcam_region = priv;
 struct mlxsw_sp *mlxsw_sp = mr_tcam_region->mlxsw_sp;
 char rtar_pl[MLXSW_REG_RTAR_LEN];
 u64 max_tcam_rules;

 max_tcam_rules = MLXSW_CORE_RES_GET(mlxsw_sp->core, ACL_MAX_TCAM_RULES);
 if (new_count > max_tcam_rules)
  return -EINVAL;
 mlxsw_reg_rtar_pack(rtar_pl, MLXSW_REG_RTAR_OP_RESIZE,
       mr_tcam_region->rtar_key_type, new_count);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(rtar), rtar_pl);
}
