
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_hardware_context {scalar_t__ port_type; } ;
struct qlcnic_adapter {int max_rds_rings; int num_txd; int max_rxd; void* max_jumbo_rxd; void* num_jumbo_rxd; int num_rxd; struct qlcnic_hardware_context* ahw; } ;


 int DEFAULT_RCV_DESCRIPTORS_1G ;
 int DEFAULT_RCV_DESCRIPTORS_VF ;
 int MAX_CMD_DESCRIPTORS ;
 void* MAX_JUMBO_RCV_DESCRIPTORS_10G ;
 void* MAX_JUMBO_RCV_DESCRIPTORS_1G ;
 int MAX_RCV_DESCRIPTORS_1G ;
 int MAX_RCV_DESCRIPTORS_VF ;
 int MAX_RDS_RINGS ;
 scalar_t__ QLCNIC_GBE ;
 scalar_t__ QLCNIC_XGBE ;

__attribute__((used)) static void
qlcnic_83xx_config_vnic_buff_descriptors(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;

 if (ahw->port_type == QLCNIC_XGBE) {
  adapter->num_rxd = DEFAULT_RCV_DESCRIPTORS_VF;
  adapter->max_rxd = MAX_RCV_DESCRIPTORS_VF;
  adapter->num_jumbo_rxd = MAX_JUMBO_RCV_DESCRIPTORS_10G;
  adapter->max_jumbo_rxd = MAX_JUMBO_RCV_DESCRIPTORS_10G;

 } else if (ahw->port_type == QLCNIC_GBE) {
  adapter->num_rxd = DEFAULT_RCV_DESCRIPTORS_1G;
  adapter->num_jumbo_rxd = MAX_JUMBO_RCV_DESCRIPTORS_1G;
  adapter->max_jumbo_rxd = MAX_JUMBO_RCV_DESCRIPTORS_1G;
  adapter->max_rxd = MAX_RCV_DESCRIPTORS_1G;
 }
 adapter->num_txd = MAX_CMD_DESCRIPTORS;
 adapter->max_rds_rings = MAX_RDS_RINGS;
}
