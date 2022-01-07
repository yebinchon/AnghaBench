
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mlxsw_sp {TYPE_2__* nve; } ;
typedef int __be16 ;
struct TYPE_3__ {int udp_dport; } ;
struct TYPE_4__ {TYPE_1__ config; } ;


 int __mlxsw_sp_nve_inc_parsing_depth_put (struct mlxsw_sp*,int ) ;

void mlxsw_sp_nve_inc_parsing_depth_put(struct mlxsw_sp *mlxsw_sp)
{
 __be16 udp_dport = mlxsw_sp->nve->config.udp_dport;

 __mlxsw_sp_nve_inc_parsing_depth_put(mlxsw_sp, udp_dport);
}
