
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {scalar_t__ portnum; int dcb; TYPE_2__* nic_ops; TYPE_1__* ahw; } ;
struct TYPE_4__ {scalar_t__ (* init_driver ) (struct qlcnic_adapter*) ;} ;
struct TYPE_3__ {int mailbox; } ;


 int EIO ;
 scalar_t__ qlcnic_83xx_configure_opmode (struct qlcnic_adapter*) ;
 int qlcnic_83xx_enable_mbx_interrupt (struct qlcnic_adapter*) ;
 int qlcnic_83xx_idc_attach_driver (struct qlcnic_adapter*) ;
 int qlcnic_83xx_idc_enter_failed_state (struct qlcnic_adapter*,int) ;
 int qlcnic_83xx_initialize_nic (struct qlcnic_adapter*,int) ;
 int qlcnic_83xx_reinit_mbx_work (int ) ;
 int qlcnic_dcb_get_info (int ) ;
 int qlcnic_set_drv_version (struct qlcnic_adapter*) ;
 int qlcnic_sriov_pf_reinit (struct qlcnic_adapter*) ;
 scalar_t__ stub1 (struct qlcnic_adapter*) ;

int qlcnic_83xx_idc_reattach_driver(struct qlcnic_adapter *adapter)
{
 int err;

 qlcnic_83xx_reinit_mbx_work(adapter->ahw->mailbox);
 qlcnic_83xx_enable_mbx_interrupt(adapter);

 qlcnic_83xx_initialize_nic(adapter, 1);

 err = qlcnic_sriov_pf_reinit(adapter);
 if (err)
  return err;

 qlcnic_83xx_enable_mbx_interrupt(adapter);

 if (qlcnic_83xx_configure_opmode(adapter)) {
  qlcnic_83xx_idc_enter_failed_state(adapter, 1);
  return -EIO;
 }

 if (adapter->nic_ops->init_driver(adapter)) {
  qlcnic_83xx_idc_enter_failed_state(adapter, 1);
  return -EIO;
 }

 if (adapter->portnum == 0)
  qlcnic_set_drv_version(adapter);

 qlcnic_dcb_get_info(adapter->dcb);
 qlcnic_83xx_idc_attach_driver(adapter);

 return 0;
}
