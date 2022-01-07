
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * current_vchunk; } ;
struct TYPE_4__ {TYPE_1__ ctx; } ;
struct mlxsw_sp_acl_tcam_vregion {TYPE_2__ rehash; } ;



__attribute__((used)) static void
mlxsw_sp_acl_tcam_rehash_ctx_vregion_changed(struct mlxsw_sp_acl_tcam_vregion *vregion)
{




 vregion->rehash.ctx.current_vchunk = ((void*)0);
}
