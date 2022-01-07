
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct mlxsw_sp {TYPE_1__* nve; } ;
struct TYPE_2__ {scalar_t__ num_nve_tunnels; int tunnel_index; } ;


 int WARN_ON (int) ;

u32 mlxsw_sp_nve_decap_tunnel_index_get(const struct mlxsw_sp *mlxsw_sp)
{
 WARN_ON(mlxsw_sp->nve->num_nve_tunnels == 0);

 return mlxsw_sp->nve->tunnel_index;
}
