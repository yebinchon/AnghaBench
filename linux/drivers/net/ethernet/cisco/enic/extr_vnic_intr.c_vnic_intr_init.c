
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vnic_intr {TYPE_1__* ctrl; } ;
struct TYPE_2__ {int int_credits; int mask_on_assertion; int coalescing_type; } ;


 int iowrite32 (unsigned int,int *) ;
 int vnic_intr_coalescing_timer_set (struct vnic_intr*,int ) ;

void vnic_intr_init(struct vnic_intr *intr, u32 coalescing_timer,
 unsigned int coalescing_type, unsigned int mask_on_assertion)
{
 vnic_intr_coalescing_timer_set(intr, coalescing_timer);
 iowrite32(coalescing_type, &intr->ctrl->coalescing_type);
 iowrite32(mask_on_assertion, &intr->ctrl->mask_on_assertion);
 iowrite32(0, &intr->ctrl->int_credits);
}
