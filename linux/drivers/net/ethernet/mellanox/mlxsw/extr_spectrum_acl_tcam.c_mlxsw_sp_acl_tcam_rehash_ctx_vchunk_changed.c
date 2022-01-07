
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * stop_ventry; int * start_ventry; struct mlxsw_sp_acl_tcam_vchunk* current_vchunk; } ;
struct TYPE_4__ {TYPE_1__ ctx; } ;
struct mlxsw_sp_acl_tcam_vregion {TYPE_2__ rehash; } ;
struct mlxsw_sp_acl_tcam_vchunk {struct mlxsw_sp_acl_tcam_vregion* vregion; } ;



__attribute__((used)) static void
mlxsw_sp_acl_tcam_rehash_ctx_vchunk_changed(struct mlxsw_sp_acl_tcam_vchunk *vchunk)
{
 struct mlxsw_sp_acl_tcam_vregion *vregion = vchunk->vregion;





 if (vregion->rehash.ctx.current_vchunk == vchunk) {
  vregion->rehash.ctx.start_ventry = ((void*)0);
  vregion->rehash.ctx.stop_ventry = ((void*)0);
 }
}
