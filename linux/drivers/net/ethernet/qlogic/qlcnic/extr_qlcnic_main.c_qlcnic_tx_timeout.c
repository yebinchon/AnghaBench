
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {scalar_t__ tx_timeo_cnt; int need_fw_reset; TYPE_1__* ahw; int state; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int reset_context; } ;


 int QLCNIC_FORCE_FW_DUMP_KEY ;
 scalar_t__ QLCNIC_MAX_TX_TIMEOUTS ;
 int __QLCNIC_RESETTING ;
 int netdev_err (struct net_device*,char*) ;
 struct qlcnic_adapter* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_tx_err (TYPE_1__*) ;
 scalar_t__ qlcnic_82xx_check (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_idc_request_reset (struct qlcnic_adapter*,int ) ;
 int qlcnic_dump_rings (struct qlcnic_adapter*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void qlcnic_tx_timeout(struct net_device *netdev)
{
 struct qlcnic_adapter *adapter = netdev_priv(netdev);

 if (test_bit(__QLCNIC_RESETTING, &adapter->state))
  return;

 qlcnic_dump_rings(adapter);

 if (++adapter->tx_timeo_cnt >= QLCNIC_MAX_TX_TIMEOUTS ||
     netif_msg_tx_err(adapter->ahw)) {
  netdev_err(netdev, "Tx timeout, reset the adapter.\n");
  if (qlcnic_82xx_check(adapter))
   adapter->need_fw_reset = 1;
  else if (qlcnic_83xx_check(adapter))
   qlcnic_83xx_idc_request_reset(adapter,
            QLCNIC_FORCE_FW_DUMP_KEY);
 } else {
  netdev_err(netdev, "Tx timeout, reset adapter context.\n");
  adapter->ahw->reset_context = 1;
 }
}
