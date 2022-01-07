
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp {int dummy; } ;
typedef enum mlxsw_reg_rauhtd_type { ____Placeholder_mlxsw_reg_rauhtd_type } mlxsw_reg_rauhtd_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MLXSW_REG_RAUHTD_LEN ;
 int MLXSW_REG_RAUHTD_TYPE_IPV4 ;
 int MLXSW_REG_RAUHTD_TYPE_IPV6 ;
 int __mlxsw_sp_router_neighs_update_rauhtd (struct mlxsw_sp*,char*,int) ;
 int kfree (char*) ;
 char* kmalloc (int ,int ) ;

__attribute__((used)) static int mlxsw_sp_router_neighs_update_rauhtd(struct mlxsw_sp *mlxsw_sp)
{
 enum mlxsw_reg_rauhtd_type type;
 char *rauhtd_pl;
 int err;

 rauhtd_pl = kmalloc(MLXSW_REG_RAUHTD_LEN, GFP_KERNEL);
 if (!rauhtd_pl)
  return -ENOMEM;

 type = MLXSW_REG_RAUHTD_TYPE_IPV4;
 err = __mlxsw_sp_router_neighs_update_rauhtd(mlxsw_sp, rauhtd_pl, type);
 if (err)
  goto out;

 type = MLXSW_REG_RAUHTD_TYPE_IPV6;
 err = __mlxsw_sp_router_neighs_update_rauhtd(mlxsw_sp, rauhtd_pl, type);
out:
 kfree(rauhtd_pl);
 return err;
}
