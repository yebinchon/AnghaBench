
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_reg_info {int dummy; } ;
struct TYPE_2__ {int use_emad; } ;
struct mlxsw_core {TYPE_1__ emad; } ;
typedef enum mlxsw_core_reg_access_type { ____Placeholder_mlxsw_core_reg_access_type } mlxsw_core_reg_access_type ;


 int LIST_HEAD (int ) ;
 int bulk_list ;
 int mlxsw_core_reg_access_cb ;
 int mlxsw_core_reg_access_cmd (struct mlxsw_core*,struct mlxsw_reg_info const*,char*,int) ;
 int mlxsw_core_reg_access_emad (struct mlxsw_core*,struct mlxsw_reg_info const*,char*,int,int *,int ,unsigned long) ;
 int mlxsw_reg_trans_bulk_wait (int *) ;

__attribute__((used)) static int mlxsw_core_reg_access(struct mlxsw_core *mlxsw_core,
     const struct mlxsw_reg_info *reg,
     char *payload,
     enum mlxsw_core_reg_access_type type)
{
 LIST_HEAD(bulk_list);
 int err;





 if (!mlxsw_core->emad.use_emad)
  return mlxsw_core_reg_access_cmd(mlxsw_core, reg,
       payload, type);

 err = mlxsw_core_reg_access_emad(mlxsw_core, reg,
      payload, type, &bulk_list,
      mlxsw_core_reg_access_cb,
      (unsigned long) payload);
 if (err)
  return err;
 return mlxsw_reg_trans_bulk_wait(&bulk_list);
}
