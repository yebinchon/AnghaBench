
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct firedtv {struct fdtv_ir_context* ir_context; } ;
struct fdtv_ir_context {int context; int buffer; } ;
struct TYPE_2__ {int card; } ;


 TYPE_1__* device_of (struct firedtv*) ;
 int fw_iso_buffer_destroy (int *,int ) ;
 int fw_iso_context_destroy (int ) ;
 int fw_iso_context_stop (int ) ;
 int kfree (struct fdtv_ir_context*) ;

void fdtv_stop_iso(struct firedtv *fdtv)
{
 struct fdtv_ir_context *ctx = fdtv->ir_context;

 fw_iso_context_stop(ctx->context);
 fw_iso_buffer_destroy(&ctx->buffer, device_of(fdtv)->card);
 fw_iso_context_destroy(ctx->context);
 kfree(ctx);
}
