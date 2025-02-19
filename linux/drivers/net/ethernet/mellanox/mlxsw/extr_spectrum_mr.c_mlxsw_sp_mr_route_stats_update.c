
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct mlxsw_sp_mr_route {scalar_t__ route_action; TYPE_4__* mfc; int route_priv; } ;
struct mlxsw_sp_mr {TYPE_1__* mr_ops; } ;
struct mlxsw_sp {struct mlxsw_sp_mr* mr; } ;
struct TYPE_6__ {scalar_t__ pkt; scalar_t__ bytes; int lastuse; } ;
struct TYPE_7__ {TYPE_2__ res; } ;
struct TYPE_8__ {TYPE_3__ mfc_un; } ;
struct TYPE_5__ {int (* route_stats ) (struct mlxsw_sp*,int ,scalar_t__*,scalar_t__*) ;} ;


 scalar_t__ MLXSW_SP_MR_ROUTE_ACTION_TRAP ;
 int jiffies ;
 int stub1 (struct mlxsw_sp*,int ,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static void mlxsw_sp_mr_route_stats_update(struct mlxsw_sp *mlxsw_sp,
        struct mlxsw_sp_mr_route *mr_route)
{
 struct mlxsw_sp_mr *mr = mlxsw_sp->mr;
 u64 packets, bytes;

 if (mr_route->route_action == MLXSW_SP_MR_ROUTE_ACTION_TRAP)
  return;

 mr->mr_ops->route_stats(mlxsw_sp, mr_route->route_priv, &packets,
    &bytes);

 if (mr_route->mfc->mfc_un.res.pkt != packets)
  mr_route->mfc->mfc_un.res.lastuse = jiffies;
 mr_route->mfc->mfc_un.res.pkt = packets;
 mr_route->mfc->mfc_un.res.bytes = bytes;
}
