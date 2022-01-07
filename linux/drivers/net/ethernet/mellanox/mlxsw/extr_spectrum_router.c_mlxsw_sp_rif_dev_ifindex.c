
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_rif {TYPE_1__* dev; } ;
struct TYPE_2__ {int ifindex; } ;



int mlxsw_sp_rif_dev_ifindex(const struct mlxsw_sp_rif *rif)
{
 return rif->dev->ifindex;
}
