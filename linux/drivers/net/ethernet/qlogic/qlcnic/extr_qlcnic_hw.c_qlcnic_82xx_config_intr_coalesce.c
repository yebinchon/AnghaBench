
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_nic_intr_coalesce {int rx_packets; int rx_time_us; int flag; } ;
struct qlcnic_adapter {int netdev; TYPE_1__* ahw; } ;
struct ethtool_coalesce {int rx_max_coalesced_frames; int rx_coalesce_usecs; } ;
struct TYPE_2__ {struct qlcnic_nic_intr_coalesce coal; } ;


 int QLCNIC_INTR_DEFAULT ;
 int netdev_err (int ,char*) ;
 int qlcnic_82xx_set_rx_coalesce (struct qlcnic_adapter*) ;

int qlcnic_82xx_config_intr_coalesce(struct qlcnic_adapter *adapter,
         struct ethtool_coalesce *ethcoal)
{
 struct qlcnic_nic_intr_coalesce *coal = &adapter->ahw->coal;
 int rv;

 coal->flag = QLCNIC_INTR_DEFAULT;
 coal->rx_time_us = ethcoal->rx_coalesce_usecs;
 coal->rx_packets = ethcoal->rx_max_coalesced_frames;

 rv = qlcnic_82xx_set_rx_coalesce(adapter);

 if (rv)
  netdev_err(adapter->netdev,
      "Failed to set Rx coalescing parameters\n");

 return rv;
}
