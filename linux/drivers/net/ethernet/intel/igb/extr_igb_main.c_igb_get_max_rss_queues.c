
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int vfs_allocated_count; struct e1000_hw hw; } ;


 unsigned int IGB_MAX_RX_QUEUES ;
 unsigned int IGB_MAX_RX_QUEUES_82575 ;
 unsigned int IGB_MAX_RX_QUEUES_I211 ;
unsigned int igb_get_max_rss_queues(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 unsigned int max_rss_queues;


 switch (hw->mac.type) {
 case 130:
  max_rss_queues = IGB_MAX_RX_QUEUES_I211;
  break;
 case 134:
 case 131:
  max_rss_queues = IGB_MAX_RX_QUEUES_82575;
  break;
 case 129:

  if (!!adapter->vfs_allocated_count) {
   max_rss_queues = 1;
   break;
  }

 case 133:
  if (!!adapter->vfs_allocated_count) {
   max_rss_queues = 2;
   break;
  }

 case 132:
 case 128:
 default:
  max_rss_queues = IGB_MAX_RX_QUEUES;
  break;
 }

 return max_rss_queues;
}
