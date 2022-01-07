
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {TYPE_1__* bus_info; int core; } ;
typedef enum mlxsw_reg_rauhtd_type { ____Placeholder_mlxsw_reg_rauhtd_type } mlxsw_reg_rauhtd_type ;
struct TYPE_2__ {int dev; } ;


 int MLXSW_REG (int ) ;
 int dev_err_ratelimited (int ,char*) ;
 int mlxsw_reg_query (int ,int ,char*) ;
 int mlxsw_reg_rauhtd_num_rec_get (char*) ;
 int mlxsw_reg_rauhtd_pack (char*,int) ;
 int mlxsw_sp_router_neigh_rec_process (struct mlxsw_sp*,char*,int) ;
 scalar_t__ mlxsw_sp_router_rauhtd_is_full (char*) ;
 int rauhtd ;
 int rtnl_lock () ;
 int rtnl_unlock () ;

__attribute__((used)) static int
__mlxsw_sp_router_neighs_update_rauhtd(struct mlxsw_sp *mlxsw_sp,
           char *rauhtd_pl,
           enum mlxsw_reg_rauhtd_type type)
{
 int i, num_rec;
 int err;




 rtnl_lock();
 do {
  mlxsw_reg_rauhtd_pack(rauhtd_pl, type);
  err = mlxsw_reg_query(mlxsw_sp->core, MLXSW_REG(rauhtd),
          rauhtd_pl);
  if (err) {
   dev_err_ratelimited(mlxsw_sp->bus_info->dev, "Failed to dump neighbour table\n");
   break;
  }
  num_rec = mlxsw_reg_rauhtd_num_rec_get(rauhtd_pl);
  for (i = 0; i < num_rec; i++)
   mlxsw_sp_router_neigh_rec_process(mlxsw_sp, rauhtd_pl,
         i);
 } while (mlxsw_sp_router_rauhtd_is_full(rauhtd_pl));
 rtnl_unlock();

 return err;
}
