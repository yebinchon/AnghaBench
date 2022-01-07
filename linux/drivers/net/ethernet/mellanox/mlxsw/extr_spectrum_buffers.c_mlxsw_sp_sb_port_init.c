
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_sb_port {struct mlxsw_sp_sb_pm* pms; } ;
struct mlxsw_sp_sb_pm {int dummy; } ;
struct mlxsw_sp {TYPE_1__* sb_vals; } ;
struct TYPE_2__ {int pool_count; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct mlxsw_sp_sb_pm* kcalloc (int ,int,int ) ;

__attribute__((used)) static int mlxsw_sp_sb_port_init(struct mlxsw_sp *mlxsw_sp,
     struct mlxsw_sp_sb_port *sb_port)
{
 struct mlxsw_sp_sb_pm *pms;

 pms = kcalloc(mlxsw_sp->sb_vals->pool_count, sizeof(*pms),
        GFP_KERNEL);
 if (!pms)
  return -ENOMEM;
 sb_port->pms = pms;
 return 0;
}
