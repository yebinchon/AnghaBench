
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* rx_packets; void* rx_time_us; int type; int tx_packets; int tx_time_us; int flag; } ;
struct qlcnic_hardware_context {TYPE_1__ coal; } ;
struct qlcnic_adapter {struct qlcnic_hardware_context* ahw; } ;


 void* QLCNIC_DEF_INTR_COALESCE_RX_PACKETS ;
 void* QLCNIC_DEF_INTR_COALESCE_RX_TIME_US ;
 int QLCNIC_DEF_INTR_COALESCE_TX_PACKETS ;
 int QLCNIC_DEF_INTR_COALESCE_TX_TIME_US ;
 int QLCNIC_INTR_COAL_TYPE_RX ;
 int QLCNIC_INTR_COAL_TYPE_RX_TX ;
 int QLCNIC_INTR_DEFAULT ;
 int qlcnic_82xx_set_rx_coalesce (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_83xx_set_rx_tx_intr_coal (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_config_def_intr_coalesce(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 int err;


 ahw->coal.flag = QLCNIC_INTR_DEFAULT;

 if (qlcnic_83xx_check(adapter)) {
  ahw->coal.type = QLCNIC_INTR_COAL_TYPE_RX_TX;
  ahw->coal.tx_time_us = QLCNIC_DEF_INTR_COALESCE_TX_TIME_US;
  ahw->coal.tx_packets = QLCNIC_DEF_INTR_COALESCE_TX_PACKETS;
  ahw->coal.rx_time_us = QLCNIC_DEF_INTR_COALESCE_RX_TIME_US;
  ahw->coal.rx_packets = QLCNIC_DEF_INTR_COALESCE_RX_PACKETS;

  err = qlcnic_83xx_set_rx_tx_intr_coal(adapter);
 } else {
  ahw->coal.type = QLCNIC_INTR_COAL_TYPE_RX;
  ahw->coal.rx_time_us = QLCNIC_DEF_INTR_COALESCE_RX_TIME_US;
  ahw->coal.rx_packets = QLCNIC_DEF_INTR_COALESCE_RX_PACKETS;

  err = qlcnic_82xx_set_rx_coalesce(adapter);
 }

 return err;
}
