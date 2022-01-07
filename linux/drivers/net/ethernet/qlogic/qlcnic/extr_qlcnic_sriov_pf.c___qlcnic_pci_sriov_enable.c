
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* ahw; int state; } ;
struct TYPE_2__ {int op_mode; } ;


 int QLCNIC_MGMT_FUNC ;
 int QLCNIC_SRIOV_PF_FUNC ;
 int __QLCNIC_SRIOV_ENABLE ;
 int __qlcnic_sriov_cleanup (struct qlcnic_adapter*) ;
 int clear_bit (int ,int *) ;
 int qlcnic_sriov_alloc_vlans (struct qlcnic_adapter*) ;
 int qlcnic_sriov_init (struct qlcnic_adapter*,int) ;
 int qlcnic_sriov_pf_create_flr_queue (struct qlcnic_adapter*) ;
 int qlcnic_sriov_pf_del_flr_queue (struct qlcnic_adapter*) ;
 int qlcnic_sriov_pf_init (struct qlcnic_adapter*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int __qlcnic_pci_sriov_enable(struct qlcnic_adapter *adapter,
         int num_vfs)
{
 int err = 0;

 set_bit(__QLCNIC_SRIOV_ENABLE, &adapter->state);
 adapter->ahw->op_mode = QLCNIC_SRIOV_PF_FUNC;

 err = qlcnic_sriov_init(adapter, num_vfs);
 if (err)
  goto clear_op_mode;

 err = qlcnic_sriov_pf_create_flr_queue(adapter);
 if (err)
  goto sriov_cleanup;

 err = qlcnic_sriov_pf_init(adapter);
 if (err)
  goto del_flr_queue;

 qlcnic_sriov_alloc_vlans(adapter);

 return err;

del_flr_queue:
 qlcnic_sriov_pf_del_flr_queue(adapter);

sriov_cleanup:
 __qlcnic_sriov_cleanup(adapter);

clear_op_mode:
 clear_bit(__QLCNIC_SRIOV_ENABLE, &adapter->state);
 adapter->ahw->op_mode = QLCNIC_MGMT_FUNC;
 return err;
}
