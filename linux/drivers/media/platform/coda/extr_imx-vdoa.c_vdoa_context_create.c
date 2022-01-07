
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdoa_data {int vdoa_clk; } ;
struct vdoa_ctx {struct vdoa_data* vdoa; int completion; } ;


 int GFP_KERNEL ;
 int clk_prepare_enable (int ) ;
 int init_completion (int *) ;
 int kfree (struct vdoa_ctx*) ;
 struct vdoa_ctx* kzalloc (int,int ) ;

struct vdoa_ctx *vdoa_context_create(struct vdoa_data *vdoa)
{
 struct vdoa_ctx *ctx;
 int err;

 ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return ((void*)0);

 err = clk_prepare_enable(vdoa->vdoa_clk);
 if (err) {
  kfree(ctx);
  return ((void*)0);
 }

 init_completion(&ctx->completion);
 ctx->vdoa = vdoa;

 return ctx;
}
