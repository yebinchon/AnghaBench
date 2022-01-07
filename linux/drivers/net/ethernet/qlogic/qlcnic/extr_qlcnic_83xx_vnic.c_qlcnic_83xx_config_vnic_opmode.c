
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct qlcnic_nic_template {int init_driver; } ;
struct TYPE_4__ {int vnic_wait_limit; int vnic_state; void* state_entry; } ;
struct qlcnic_hardware_context {int op_mode; int capabilities; TYPE_2__ idc; int pci_func; } ;
struct qlcnic_adapter {int rx_mac_learn; int flags; scalar_t__ drv_mac_learn; TYPE_1__* pdev; struct qlcnic_hardware_context* ahw; struct qlcnic_nic_template* nic_ops; } ;
struct TYPE_3__ {int dev; } ;


 int EIO ;
 int QLCNIC_DEV_NPAR_NON_OPER ;
 int QLCNIC_DEV_NPAR_OPER_TIMEO ;
 int QLCNIC_ESWITCH_ENABLED ;



 scalar_t__ QLCRDX (struct qlcnic_hardware_context*,int ) ;
 scalar_t__ QLC_83XX_DEFAULT_OPMODE ;
 int QLC_83XX_DRV_OP_MODE ;
 int QLC_83XX_ESWITCH_CAPABILITY ;
 scalar_t__ QLC_83XX_GET_FUNC_PRIVILEGE (scalar_t__,int ) ;
 int dev_err (int *,char*) ;
 void* qlcnic_83xx_idc_ready_state_entry ;
 void* qlcnic_83xx_idc_vnic_pf_entry ;
 int qlcnic_83xx_init_mgmt_vnic ;
 int qlcnic_83xx_init_non_privileged_vnic ;
 int qlcnic_83xx_init_privileged_vnic ;
 int qlcnic_get_func_no (struct qlcnic_adapter*) ;

int qlcnic_83xx_config_vnic_opmode(struct qlcnic_adapter *adapter)
{
 u32 op_mode, priv_level;
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 struct qlcnic_nic_template *nic_ops = adapter->nic_ops;

 qlcnic_get_func_no(adapter);
 op_mode = QLCRDX(adapter->ahw, QLC_83XX_DRV_OP_MODE);

 if (op_mode == QLC_83XX_DEFAULT_OPMODE)
  priv_level = 130;
 else
  priv_level = QLC_83XX_GET_FUNC_PRIVILEGE(op_mode,
        ahw->pci_func);
 switch (priv_level) {
 case 129:
  ahw->op_mode = 129;
  ahw->idc.state_entry = qlcnic_83xx_idc_ready_state_entry;
  nic_ops->init_driver = qlcnic_83xx_init_non_privileged_vnic;
  break;
 case 128:
  ahw->op_mode = 128;
  ahw->idc.state_entry = qlcnic_83xx_idc_vnic_pf_entry;
  nic_ops->init_driver = qlcnic_83xx_init_privileged_vnic;
  break;
 case 130:
  ahw->op_mode = 130;
  ahw->idc.state_entry = qlcnic_83xx_idc_ready_state_entry;
  nic_ops->init_driver = qlcnic_83xx_init_mgmt_vnic;
  break;
 default:
  dev_err(&adapter->pdev->dev, "Invalid Virtual NIC opmode\n");
  return -EIO;
 }

 if (ahw->capabilities & QLC_83XX_ESWITCH_CAPABILITY) {
  adapter->flags |= QLCNIC_ESWITCH_ENABLED;
  if (adapter->drv_mac_learn)
   adapter->rx_mac_learn = 1;
 } else {
  adapter->flags &= ~QLCNIC_ESWITCH_ENABLED;
  adapter->rx_mac_learn = 0;
 }

 ahw->idc.vnic_state = QLCNIC_DEV_NPAR_NON_OPER;
 ahw->idc.vnic_wait_limit = QLCNIC_DEV_NPAR_OPER_TIMEO;

 return 0;
}
