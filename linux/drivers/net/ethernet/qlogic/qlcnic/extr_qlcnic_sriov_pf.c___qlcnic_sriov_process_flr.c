
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_vf_info {int * flr_trans; int state; int pci_func; int rcv_act; int trans_work; int rcv_pend; struct qlcnic_adapter* adapter; } ;
struct qlcnic_adapter {TYPE_1__* ahw; } ;
struct TYPE_2__ {int sriov; } ;


 int QLC_BC_VF_FLR ;
 int QLC_BC_VF_SOFT_FLR ;
 int cancel_work_sync (int *) ;
 int clear_bit (int ,int *) ;
 int qlcnic_sriov_add_act_list_irqsave (int ,struct qlcnic_vf_info*,int *) ;
 int qlcnic_sriov_cleanup_list (int *) ;
 int qlcnic_sriov_del_rx_ctx (struct qlcnic_adapter*,struct qlcnic_vf_info*) ;
 int qlcnic_sriov_del_tx_ctx (struct qlcnic_adapter*,struct qlcnic_vf_info*) ;
 int qlcnic_sriov_pf_config_vport (struct qlcnic_adapter*,int ,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void __qlcnic_sriov_process_flr(struct qlcnic_vf_info *vf)
{
 struct qlcnic_adapter *adapter = vf->adapter;

 qlcnic_sriov_cleanup_list(&vf->rcv_pend);
 cancel_work_sync(&vf->trans_work);
 qlcnic_sriov_cleanup_list(&vf->rcv_act);

 if (test_bit(QLC_BC_VF_SOFT_FLR, &vf->state)) {
  qlcnic_sriov_del_tx_ctx(adapter, vf);
  qlcnic_sriov_del_rx_ctx(adapter, vf);
 }

 qlcnic_sriov_pf_config_vport(adapter, 0, vf->pci_func);

 clear_bit(QLC_BC_VF_FLR, &vf->state);
 if (test_bit(QLC_BC_VF_SOFT_FLR, &vf->state)) {
  qlcnic_sriov_add_act_list_irqsave(adapter->ahw->sriov, vf,
        vf->flr_trans);
  clear_bit(QLC_BC_VF_SOFT_FLR, &vf->state);
  vf->flr_trans = ((void*)0);
 }
}
