
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct __vxge_hw_ring {TYPE_1__* vp_reg; int tim_rti_cfg1_saved; } ;
struct TYPE_2__ {int * tim_cfg1_int_num; } ;


 int VXGE_HW_TIM_CFG1_INT_NUM_TIMER_CI ;
 size_t VXGE_HW_VPATH_INTR_RX ;
 int writeq (int ,int *) ;

void vxge_hw_vpath_dynamic_rti_ci_set(struct __vxge_hw_ring *ring)
{
 u64 val64 = ring->tim_rti_cfg1_saved;

 val64 |= VXGE_HW_TIM_CFG1_INT_NUM_TIMER_CI;
 ring->tim_rti_cfg1_saved = val64;
 writeq(val64, &ring->vp_reg->tim_cfg1_int_num[VXGE_HW_VPATH_INTR_RX]);
}
