
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int delay; int status; } ;
struct qlcnic_hardware_context {int msix_supported; scalar_t__ reset_context; TYPE_1__ idc; } ;
struct qlcnic_adapter {int state; int idc_aen_work; TYPE_2__* pdev; int flags; scalar_t__ need_fw_reset; scalar_t__ fw_fail_cnt; struct qlcnic_hardware_context* ahw; } ;
struct TYPE_4__ {int dev; } ;


 int INIT_DELAYED_WORK (int *,int ) ;
 int QLCNIC_TX_INTR_SHARED ;
 int QLC_83XX_IDC_FW_POLL_DELAY ;
 int QLC_83XX_MODULE_LOADED ;
 int __QLCNIC_RESETTING ;
 int clear_bit (int ,int *) ;
 int dev_warn (int *,char*) ;
 int qlcnic_83xx_idc_aen_work ;
 scalar_t__ qlcnic_read_mac_addr (struct qlcnic_adapter*) ;
 int qlcnic_sriov_check_dev_ready (struct qlcnic_adapter*) ;
 int qlcnic_sriov_setup_vf (struct qlcnic_adapter*,int) ;
 int set_bit (int ,int *) ;

int qlcnic_sriov_vf_init(struct qlcnic_adapter *adapter, int pci_using_dac)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 int err;

 set_bit(QLC_83XX_MODULE_LOADED, &ahw->idc.status);
 ahw->idc.delay = QLC_83XX_IDC_FW_POLL_DELAY;
 ahw->reset_context = 0;
 adapter->fw_fail_cnt = 0;
 ahw->msix_supported = 1;
 adapter->need_fw_reset = 0;
 adapter->flags |= QLCNIC_TX_INTR_SHARED;

 err = qlcnic_sriov_check_dev_ready(adapter);
 if (err)
  return err;

 err = qlcnic_sriov_setup_vf(adapter, pci_using_dac);
 if (err)
  return err;

 if (qlcnic_read_mac_addr(adapter))
  dev_warn(&adapter->pdev->dev, "failed to read mac addr\n");

 INIT_DELAYED_WORK(&adapter->idc_aen_work, qlcnic_83xx_idc_aen_work);

 clear_bit(__QLCNIC_RESETTING, &adapter->state);
 return 0;
}
