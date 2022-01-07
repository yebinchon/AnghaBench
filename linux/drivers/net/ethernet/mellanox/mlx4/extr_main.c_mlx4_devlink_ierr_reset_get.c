
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int vbool; } ;
struct devlink_param_gset_ctx {TYPE_1__ val; } ;
struct devlink {int dummy; } ;


 int mlx4_internal_err_reset ;

__attribute__((used)) static int mlx4_devlink_ierr_reset_get(struct devlink *devlink, u32 id,
           struct devlink_param_gset_ctx *ctx)
{
 ctx->val.vbool = !!mlx4_internal_err_reset;
 return 0;
}
