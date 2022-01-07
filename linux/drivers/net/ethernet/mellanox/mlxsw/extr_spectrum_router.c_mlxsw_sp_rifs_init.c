
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct mlxsw_sp_rif {int dummy; } ;
struct mlxsw_sp {TYPE_1__* router; int core; } ;
struct TYPE_2__ {int rifs; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MAX_RIFS ;
 int MLXSW_CORE_RES_GET (int ,int ) ;
 int kcalloc (int ,int,int ) ;

__attribute__((used)) static int mlxsw_sp_rifs_init(struct mlxsw_sp *mlxsw_sp)
{
 u64 max_rifs = MLXSW_CORE_RES_GET(mlxsw_sp->core, MAX_RIFS);

 mlxsw_sp->router->rifs = kcalloc(max_rifs,
      sizeof(struct mlxsw_sp_rif *),
      GFP_KERNEL);
 if (!mlxsw_sp->router->rifs)
  return -ENOMEM;

 return 0;
}
