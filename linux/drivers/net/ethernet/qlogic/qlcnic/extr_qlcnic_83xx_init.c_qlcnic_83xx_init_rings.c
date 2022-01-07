
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct qlcnic_adapter {TYPE_1__* ahw; int max_sds_rings; int max_tx_rings; } ;
struct TYPE_2__ {int msix_supported; } ;


 int QLCNIC_DEF_SDS_RINGS ;
 int QLCNIC_DEF_TX_RINGS ;
 int QLCNIC_MAX_SDS_RINGS ;
 int QLCNIC_MAX_TX_RINGS ;
 int QLCNIC_SINGLE_RING ;
 int qlcnic_set_sds_ring_count (struct qlcnic_adapter*,int ) ;
 int qlcnic_set_tx_ring_count (struct qlcnic_adapter*,int ) ;

__attribute__((used)) static void qlcnic_83xx_init_rings(struct qlcnic_adapter *adapter)
{
 u8 rx_cnt = QLCNIC_DEF_SDS_RINGS;
 u8 tx_cnt = QLCNIC_DEF_TX_RINGS;

 adapter->max_tx_rings = QLCNIC_MAX_TX_RINGS;
 adapter->max_sds_rings = QLCNIC_MAX_SDS_RINGS;

 if (!adapter->ahw->msix_supported) {
  rx_cnt = QLCNIC_SINGLE_RING;
  tx_cnt = QLCNIC_SINGLE_RING;
 }


 qlcnic_set_tx_ring_count(adapter, tx_cnt);
 qlcnic_set_sds_ring_count(adapter, rx_cnt);
}
