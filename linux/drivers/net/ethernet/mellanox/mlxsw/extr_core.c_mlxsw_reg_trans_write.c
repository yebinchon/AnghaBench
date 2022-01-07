
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_reg_info {int dummy; } ;
struct mlxsw_core {int dummy; } ;
struct list_head {int dummy; } ;
typedef int mlxsw_reg_trans_cb_t ;


 int MLXSW_CORE_REG_ACCESS_TYPE_WRITE ;
 int mlxsw_core_reg_access_emad (struct mlxsw_core*,struct mlxsw_reg_info const*,char*,int ,struct list_head*,int *,unsigned long) ;

int mlxsw_reg_trans_write(struct mlxsw_core *mlxsw_core,
     const struct mlxsw_reg_info *reg, char *payload,
     struct list_head *bulk_list,
     mlxsw_reg_trans_cb_t *cb, unsigned long cb_priv)
{
 return mlxsw_core_reg_access_emad(mlxsw_core, reg, payload,
       MLXSW_CORE_REG_ACCESS_TYPE_WRITE,
       bulk_list, cb, cb_priv);
}
