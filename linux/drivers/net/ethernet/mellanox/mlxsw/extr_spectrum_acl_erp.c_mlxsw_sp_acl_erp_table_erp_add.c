
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct mlxsw_sp_acl_erp_table {int erp_index_bitmap; int base_index; TYPE_1__* aregion; TYPE_3__* erp_core; } ;
struct TYPE_5__ {int mask; } ;
struct mlxsw_sp_acl_erp {int index; TYPE_2__ key; int id; } ;
struct mlxsw_sp {int core; } ;
typedef enum mlxsw_reg_perpt_key_size { ____Placeholder_mlxsw_reg_perpt_key_size } mlxsw_reg_perpt_key_size ;
struct TYPE_6__ {struct mlxsw_sp* mlxsw_sp; } ;
struct TYPE_4__ {scalar_t__ type; } ;


 int MLXSW_REG (int ) ;
 int MLXSW_REG_PERPT_LEN ;
 int MLXSW_SP_ACL_ERP_MAX_PER_REGION ;
 int mlxsw_reg_perpt_erp_vector_pack (char*,int ,int ) ;
 int mlxsw_reg_perpt_erp_vector_set (char*,int ,int) ;
 int mlxsw_reg_perpt_pack (char*,int ,int ,int,int ,int ,int ,int ,int ) ;
 int mlxsw_reg_write (int ,int ,char*) ;
 int mlxsw_sp_acl_erp_table_locate (struct mlxsw_sp_acl_erp_table*,struct mlxsw_sp_acl_erp*,int *,int *) ;
 int perpt ;

__attribute__((used)) static int
mlxsw_sp_acl_erp_table_erp_add(struct mlxsw_sp_acl_erp_table *erp_table,
          struct mlxsw_sp_acl_erp *erp)
{
 struct mlxsw_sp *mlxsw_sp = erp_table->erp_core->mlxsw_sp;
 enum mlxsw_reg_perpt_key_size key_size;
 char perpt_pl[MLXSW_REG_PERPT_LEN];
 u8 erpt_bank, erpt_index;

 mlxsw_sp_acl_erp_table_locate(erp_table, erp, &erpt_bank, &erpt_index);
 key_size = (enum mlxsw_reg_perpt_key_size) erp_table->aregion->type;
 mlxsw_reg_perpt_pack(perpt_pl, erpt_bank, erpt_index, key_size, erp->id,
        0, erp_table->base_index, erp->index,
        erp->key.mask);
 mlxsw_reg_perpt_erp_vector_pack(perpt_pl, erp_table->erp_index_bitmap,
     MLXSW_SP_ACL_ERP_MAX_PER_REGION);
 mlxsw_reg_perpt_erp_vector_set(perpt_pl, erp->index, 1);
 return mlxsw_reg_write(mlxsw_sp->core, MLXSW_REG(perpt), perpt_pl);
}
