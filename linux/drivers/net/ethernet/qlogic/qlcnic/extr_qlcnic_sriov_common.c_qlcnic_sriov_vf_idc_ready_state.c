
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ prev_state; } ;
struct qlcnic_hardware_context {scalar_t__ reset_context; TYPE_1__ idc; } ;
struct qlcnic_adapter {int state; struct qlcnic_hardware_context* ahw; } ;


 scalar_t__ QLC_83XX_IDC_DEV_READY ;
 int __QLCNIC_RESETTING ;
 int clear_bit (int ,int *) ;
 int qlcnic_sriov_vf_handle_context_reset (struct qlcnic_adapter*) ;
 int qlcnic_sriov_vf_handle_dev_ready (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_sriov_vf_idc_ready_state(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 int ret = 0;

 if (ahw->idc.prev_state != QLC_83XX_IDC_DEV_READY)
  ret = qlcnic_sriov_vf_handle_dev_ready(adapter);
 else if (ahw->reset_context)
  ret = qlcnic_sriov_vf_handle_context_reset(adapter);

 clear_bit(__QLCNIC_RESETTING, &adapter->state);
 return ret;
}
