
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct qlcnic_adapter {int drv_sds_rings; scalar_t__ max_sds_rings; } ;


 int QLCNIC_RX_QUEUE ;
 int qlcnic_max_rings (struct qlcnic_adapter*,int ,int ) ;

void qlcnic_set_sds_ring_count(struct qlcnic_adapter *adapter, u8 rx_cnt)
{

 if (adapter->max_sds_rings)
  adapter->drv_sds_rings = qlcnic_max_rings(adapter, rx_cnt,
         QLCNIC_RX_QUEUE);
 else
  adapter->drv_sds_rings = rx_cnt;
}
