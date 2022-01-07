
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp {TYPE_1__* nve; } ;
typedef int __be16 ;
struct TYPE_2__ {int inc_parsing_depth_refs; } ;


 int mlxsw_sp_nve_parsing_set (struct mlxsw_sp*,int ) ;

__attribute__((used)) static int
__mlxsw_sp_nve_inc_parsing_depth_get(struct mlxsw_sp *mlxsw_sp,
         __be16 udp_dport)
{
 int err;

 mlxsw_sp->nve->inc_parsing_depth_refs++;

 err = mlxsw_sp_nve_parsing_set(mlxsw_sp, udp_dport);
 if (err)
  goto err_nve_parsing_set;
 return 0;

err_nve_parsing_set:
 mlxsw_sp->nve->inc_parsing_depth_refs--;
 return err;
}
