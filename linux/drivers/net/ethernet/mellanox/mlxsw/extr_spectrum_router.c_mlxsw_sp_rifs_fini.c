
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {TYPE_1__* router; int core; } ;
struct TYPE_2__ {int * rifs; } ;


 int MAX_RIFS ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 int WARN_ON_ONCE (int ) ;
 int kfree (int *) ;

__attribute__((used)) static void mlxsw_sp_rifs_fini(struct mlxsw_sp *mlxsw_sp)
{
 int i;

 for (i = 0; i < MLXSW_CORE_RES_GET(mlxsw_sp->core, MAX_RIFS); i++)
  WARN_ON_ONCE(mlxsw_sp->router->rifs[i]);

 kfree(mlxsw_sp->router->rifs);
}
