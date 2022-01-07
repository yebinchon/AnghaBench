
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdp1_field_buffer {int list; } ;
struct fdp1_ctx {int buffers_queued; TYPE_1__* fdp1; int fields_queue; } ;
struct TYPE_2__ {int irqlock; } ;


 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void fdp1_queue_field(struct fdp1_ctx *ctx,
        struct fdp1_field_buffer *fbuf)
{
 unsigned long flags;

 spin_lock_irqsave(&ctx->fdp1->irqlock, flags);
 list_add_tail(&fbuf->list, &ctx->fields_queue);
 spin_unlock_irqrestore(&ctx->fdp1->irqlock, flags);

 ctx->buffers_queued++;
}
