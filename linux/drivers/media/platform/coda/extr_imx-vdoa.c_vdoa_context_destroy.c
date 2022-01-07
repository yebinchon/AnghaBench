
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdoa_data {int vdoa_clk; struct vdoa_ctx* curr_ctx; } ;
struct vdoa_ctx {struct vdoa_data* vdoa; } ;


 int clk_disable_unprepare (int ) ;
 int kfree (struct vdoa_ctx*) ;
 int vdoa_wait_for_completion (struct vdoa_ctx*) ;

void vdoa_context_destroy(struct vdoa_ctx *ctx)
{
 struct vdoa_data *vdoa = ctx->vdoa;

 if (vdoa->curr_ctx == ctx) {
  vdoa_wait_for_completion(vdoa->curr_ctx);
  vdoa->curr_ctx = ((void*)0);
 }

 clk_disable_unprepare(vdoa->vdoa_clk);
 kfree(ctx);
}
