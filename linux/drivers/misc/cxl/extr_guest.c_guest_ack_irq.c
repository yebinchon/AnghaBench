
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct cxl_context {int process_token; TYPE_2__* afu; } ;
struct TYPE_4__ {TYPE_1__* guest; } ;
struct TYPE_3__ {int handle; } ;


 int cxl_h_control_faults (int ,int ,int,int) ;

__attribute__((used)) static int guest_ack_irq(struct cxl_context *ctx, u64 tfc, u64 psl_reset_mask)
{
 return cxl_h_control_faults(ctx->afu->guest->handle, ctx->process_token,
    tfc >> 32, (psl_reset_mask != 0));
}
