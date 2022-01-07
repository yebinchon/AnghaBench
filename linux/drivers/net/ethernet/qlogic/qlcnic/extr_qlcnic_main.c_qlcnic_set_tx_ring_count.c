
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qlcnic_adapter {int drv_tx_rings; scalar_t__ max_tx_rings; } ;


 int QLCNIC_TX_QUEUE ;
 int qlcnic_max_rings (struct qlcnic_adapter*,int ,int ) ;

void qlcnic_set_tx_ring_count(struct qlcnic_adapter *adapter, u8 tx_cnt)
{

 if (adapter->max_tx_rings)
  adapter->drv_tx_rings = qlcnic_max_rings(adapter, tx_cnt,
        QLCNIC_TX_QUEUE);
 else
  adapter->drv_tx_rings = tx_cnt;
}
