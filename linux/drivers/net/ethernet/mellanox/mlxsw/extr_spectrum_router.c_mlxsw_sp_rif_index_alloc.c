
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mlxsw_sp {TYPE_1__* router; int core; } ;
struct TYPE_2__ {int * rifs; } ;


 int ENOBUFS ;
 int MAX_RIFS ;
 int MLXSW_CORE_RES_GET (int ,int ) ;

__attribute__((used)) static int mlxsw_sp_rif_index_alloc(struct mlxsw_sp *mlxsw_sp, u16 *p_rif_index)
{
 int i;

 for (i = 0; i < MLXSW_CORE_RES_GET(mlxsw_sp->core, MAX_RIFS); i++) {
  if (!mlxsw_sp->router->rifs[i]) {
   *p_rif_index = i;
   return 0;
  }
 }

 return -ENOBUFS;
}
