
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct cxl_context {int psn_size; int pe; TYPE_3__* afu; scalar_t__ psn_phys; scalar_t__ master; } ;
struct TYPE_6__ {int pp_size; TYPE_2__* native; scalar_t__ psn_phys; TYPE_1__* adapter; } ;
struct TYPE_5__ {scalar_t__ pp_offset; } ;
struct TYPE_4__ {int ps_size; } ;



void cxl_assign_psn_space(struct cxl_context *ctx)
{
 if (!ctx->afu->pp_size || ctx->master) {
  ctx->psn_phys = ctx->afu->psn_phys;
  ctx->psn_size = ctx->afu->adapter->ps_size;
 } else {
  ctx->psn_phys = ctx->afu->psn_phys +
   (ctx->afu->native->pp_offset + ctx->afu->pp_size * ctx->pe);
  ctx->psn_size = ctx->afu->pp_size;
 }
}
