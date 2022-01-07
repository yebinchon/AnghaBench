
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ fnum; } ;
struct qlcnic_adapter {scalar_t__ is_up; int drv_tx_rings; int * tx_ring; int flags; TYPE_3__* ahw; TYPE_1__ fhash; int state; } ;
struct net_device {int dummy; } ;
struct TYPE_6__ {TYPE_2__* sriov; scalar_t__ linkup; } ;
struct TYPE_5__ {int bc; } ;


 scalar_t__ QLCNIC_ADAPTER_UP_MAGIC ;
 int QLCNIC_FW_LRO_MSS_CAP ;
 int QLCNIC_NIU_NON_PROMISC_MODE ;
 int __QLCNIC_DEV_UP ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_disable (struct net_device*) ;
 int qlcnic_delete_lb_filters (struct qlcnic_adapter*) ;
 int qlcnic_free_mac_list (struct qlcnic_adapter*) ;
 int qlcnic_fw_destroy_ctx (struct qlcnic_adapter*) ;
 int qlcnic_napi_disable (struct qlcnic_adapter*) ;
 int qlcnic_nic_set_promisc (struct qlcnic_adapter*,int ) ;
 int qlcnic_release_tx_buffers (struct qlcnic_adapter*,int *) ;
 int qlcnic_reset_rx_buffers_list (struct qlcnic_adapter*) ;
 int qlcnic_sriov_cleanup_async_list (int *) ;
 scalar_t__ qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;
 int smp_mb () ;
 int test_and_clear_bit (int ,int *) ;

void __qlcnic_down(struct qlcnic_adapter *adapter, struct net_device *netdev)
{
 int ring;

 if (adapter->is_up != QLCNIC_ADAPTER_UP_MAGIC)
  return;

 if (!test_and_clear_bit(__QLCNIC_DEV_UP, &adapter->state))
  return;

 smp_mb();
 netif_carrier_off(netdev);
 adapter->ahw->linkup = 0;
 netif_tx_disable(netdev);

 qlcnic_free_mac_list(adapter);

 if (adapter->fhash.fnum)
  qlcnic_delete_lb_filters(adapter);

 qlcnic_nic_set_promisc(adapter, QLCNIC_NIU_NON_PROMISC_MODE);
 if (qlcnic_sriov_vf_check(adapter))
  qlcnic_sriov_cleanup_async_list(&adapter->ahw->sriov->bc);

 qlcnic_napi_disable(adapter);

 qlcnic_fw_destroy_ctx(adapter);
 adapter->flags &= ~QLCNIC_FW_LRO_MSS_CAP;

 qlcnic_reset_rx_buffers_list(adapter);

 for (ring = 0; ring < adapter->drv_tx_rings; ring++)
  qlcnic_release_tx_buffers(adapter, &adapter->tx_ring[ring]);
}
