
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct fw_device {int card; int max_speed; } ;
struct firedtv {struct fdtv_ir_context* ir_context; int isochannel; } ;
struct TYPE_3__ {int * pages; } ;
struct fdtv_ir_context {int context; TYPE_1__ buffer; int * pages; scalar_t__ current_packet; scalar_t__ interrupt_packet; } ;


 int DMA_FROM_DEVICE ;
 int ENOMEM ;
 int FW_ISO_CONTEXT_MATCH_ALL_TAGS ;
 int FW_ISO_CONTEXT_RECEIVE ;
 int GFP_KERNEL ;
 int ISO_HEADER_SIZE ;
 scalar_t__ IS_ERR (int ) ;
 int N_PACKETS ;
 int N_PAGES ;
 int PTR_ERR (int ) ;
 struct fw_device* device_of (struct firedtv*) ;
 int fw_iso_buffer_destroy (TYPE_1__*,int ) ;
 int fw_iso_buffer_init (TYPE_1__*,int ,int,int ) ;
 int fw_iso_context_create (int ,int ,int ,int ,int ,int ,struct firedtv*) ;
 int fw_iso_context_destroy (int ) ;
 int fw_iso_context_start (int ,int,int ,int ) ;
 int handle_iso ;
 int kfree (struct fdtv_ir_context*) ;
 struct fdtv_ir_context* kmalloc (int,int ) ;
 int page_address (int ) ;
 int queue_iso (struct fdtv_ir_context*,int) ;

int fdtv_start_iso(struct firedtv *fdtv)
{
 struct fdtv_ir_context *ctx;
 struct fw_device *device = device_of(fdtv);
 int i, err;

 ctx = kmalloc(sizeof(*ctx), GFP_KERNEL);
 if (!ctx)
  return -ENOMEM;

 ctx->context = fw_iso_context_create(device->card,
   FW_ISO_CONTEXT_RECEIVE, fdtv->isochannel,
   device->max_speed, ISO_HEADER_SIZE, handle_iso, fdtv);
 if (IS_ERR(ctx->context)) {
  err = PTR_ERR(ctx->context);
  goto fail_free;
 }

 err = fw_iso_buffer_init(&ctx->buffer, device->card,
     N_PAGES, DMA_FROM_DEVICE);
 if (err)
  goto fail_context_destroy;

 ctx->interrupt_packet = 0;
 ctx->current_packet = 0;

 for (i = 0; i < N_PAGES; i++)
  ctx->pages[i] = page_address(ctx->buffer.pages[i]);

 for (i = 0; i < N_PACKETS; i++) {
  err = queue_iso(ctx, i);
  if (err)
   goto fail;
 }

 err = fw_iso_context_start(ctx->context, -1, 0,
       FW_ISO_CONTEXT_MATCH_ALL_TAGS);
 if (err)
  goto fail;

 fdtv->ir_context = ctx;

 return 0;
fail:
 fw_iso_buffer_destroy(&ctx->buffer, device->card);
fail_context_destroy:
 fw_iso_context_destroy(ctx->context);
fail_free:
 kfree(ctx);

 return err;
}
