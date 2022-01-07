
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_mr_vif {scalar_t__ rif; scalar_t__ dev; TYPE_1__* ops; } ;
struct TYPE_2__ {scalar_t__ (* is_regular ) (struct mlxsw_sp_mr_vif const*) ;} ;


 scalar_t__ stub1 (struct mlxsw_sp_mr_vif const*) ;

__attribute__((used)) static bool mlxsw_sp_mr_vif_valid(const struct mlxsw_sp_mr_vif *vif)
{
 return vif->ops->is_regular(vif) && vif->dev && vif->rif;
}
