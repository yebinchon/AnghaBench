
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cxl_irq_info {int dummy; } ;
struct cxl_context {int process_token; TYPE_2__* afu; } ;
struct TYPE_4__ {TYPE_1__* guest; } ;
struct TYPE_3__ {int handle; } ;


 int cxl_h_collect_int_info (int ,int ,struct cxl_irq_info*) ;

__attribute__((used)) static int guest_get_irq_info(struct cxl_context *ctx, struct cxl_irq_info *info)
{
 return cxl_h_collect_int_info(ctx->afu->guest->handle, ctx->process_token, info);
}
