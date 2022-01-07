
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlxsw_sp_vr {int rif_count; int ul_rif_refcnt; } ;
struct mlxsw_sp_rif {size_t vr_id; struct mlxsw_sp* mlxsw_sp; } ;
struct mlxsw_sp {TYPE_1__* router; } ;
struct TYPE_2__ {struct mlxsw_sp_vr* vrs; } ;


 int mlxsw_sp_ul_rif_destroy (struct mlxsw_sp_rif*) ;
 int mlxsw_sp_vr_put (struct mlxsw_sp*,struct mlxsw_sp_vr*) ;
 int refcount_dec_and_test (int *) ;

__attribute__((used)) static void mlxsw_sp_ul_rif_put(struct mlxsw_sp_rif *ul_rif)
{
 struct mlxsw_sp *mlxsw_sp = ul_rif->mlxsw_sp;
 struct mlxsw_sp_vr *vr;

 vr = &mlxsw_sp->router->vrs[ul_rif->vr_id];

 if (!refcount_dec_and_test(&vr->ul_rif_refcnt))
  return;

 vr->rif_count--;
 mlxsw_sp_ul_rif_destroy(ul_rif);
 mlxsw_sp_vr_put(mlxsw_sp, vr);
}
