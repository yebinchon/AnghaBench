
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {int drv_tx_rings; int flags; TYPE_1__* ahw; int * tx_ring; int state; } ;
struct TYPE_2__ {scalar_t__ diag_test; } ;


 scalar_t__ QLCNIC_LOOPBACK_TEST ;
 int QLCNIC_MSIX_ENABLED ;
 int __QLCNIC_FW_ATTACHED ;
 int mdelay (int) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 int qlcnic_82xx_config_intrpt (struct qlcnic_adapter*,int ) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_config_intrpt (struct qlcnic_adapter*,int ) ;
 scalar_t__ qlcnic_check_multi_tx (struct qlcnic_adapter*) ;
 int qlcnic_fw_cmd_del_rx_ctx (struct qlcnic_adapter*) ;
 int qlcnic_fw_cmd_del_tx_ctx (struct qlcnic_adapter*,int *) ;
 scalar_t__ test_and_clear_bit (int ,int *) ;

void qlcnic_fw_destroy_ctx(struct qlcnic_adapter *adapter)
{
 int ring;

 if (test_and_clear_bit(__QLCNIC_FW_ATTACHED, &adapter->state)) {
  qlcnic_fw_cmd_del_rx_ctx(adapter);
  for (ring = 0; ring < adapter->drv_tx_rings; ring++)
   qlcnic_fw_cmd_del_tx_ctx(adapter,
       &adapter->tx_ring[ring]);

  if (qlcnic_82xx_check(adapter) &&
      (adapter->flags & QLCNIC_MSIX_ENABLED) &&
      qlcnic_check_multi_tx(adapter) &&
      !adapter->ahw->diag_test)
    qlcnic_82xx_config_intrpt(adapter, 0);

  if (qlcnic_83xx_check(adapter) &&
      (adapter->flags & QLCNIC_MSIX_ENABLED)) {
   if (adapter->ahw->diag_test != QLCNIC_LOOPBACK_TEST)
    qlcnic_83xx_config_intrpt(adapter, 0);
  }

  mdelay(20);
 }
}
