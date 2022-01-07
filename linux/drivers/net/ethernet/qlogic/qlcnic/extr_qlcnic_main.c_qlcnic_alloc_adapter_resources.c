
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_recv_context {int dummy; } ;
struct TYPE_2__ {void* rx_packets; void* rx_time_us; int type; int tx_packets; int tx_time_us; } ;
struct qlcnic_hardware_context {TYPE_1__ coal; } ;
struct qlcnic_adapter {int stats; int recv_ctx; struct qlcnic_hardware_context* ahw; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 void* QLCNIC_DEF_INTR_COALESCE_RX_PACKETS ;
 void* QLCNIC_DEF_INTR_COALESCE_RX_TIME_US ;
 int QLCNIC_DEF_INTR_COALESCE_TX_PACKETS ;
 int QLCNIC_DEF_INTR_COALESCE_TX_TIME_US ;
 int QLCNIC_INTR_COAL_TYPE_RX ;
 int QLCNIC_INTR_COAL_TYPE_RX_TX ;
 int kzalloc (int,int ) ;
 int memset (int *,int ,int) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_alloc_adapter_resources(struct qlcnic_adapter *adapter)
{
 struct qlcnic_hardware_context *ahw = adapter->ahw;
 int err = 0;

 adapter->recv_ctx = kzalloc(sizeof(struct qlcnic_recv_context),
    GFP_KERNEL);
 if (!adapter->recv_ctx) {
  err = -ENOMEM;
  goto err_out;
 }

 if (qlcnic_83xx_check(adapter)) {
  ahw->coal.type = QLCNIC_INTR_COAL_TYPE_RX_TX;
  ahw->coal.tx_time_us = QLCNIC_DEF_INTR_COALESCE_TX_TIME_US;
  ahw->coal.tx_packets = QLCNIC_DEF_INTR_COALESCE_TX_PACKETS;
  ahw->coal.rx_time_us = QLCNIC_DEF_INTR_COALESCE_RX_TIME_US;
  ahw->coal.rx_packets = QLCNIC_DEF_INTR_COALESCE_RX_PACKETS;
 } else {
  ahw->coal.type = QLCNIC_INTR_COAL_TYPE_RX;
  ahw->coal.rx_time_us = QLCNIC_DEF_INTR_COALESCE_RX_TIME_US;
  ahw->coal.rx_packets = QLCNIC_DEF_INTR_COALESCE_RX_PACKETS;
 }


 memset(&adapter->stats, 0, sizeof(adapter->stats));
err_out:
 return err;
}
