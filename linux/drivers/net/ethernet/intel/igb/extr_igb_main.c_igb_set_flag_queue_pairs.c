
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int const rss_queues; int flags; struct e1000_hw hw; } ;


 int IGB_FLAG_QUEUE_PAIRS ;
void igb_set_flag_queue_pairs(struct igb_adapter *adapter,
         const u32 max_rss_queues)
{
 struct e1000_hw *hw = &adapter->hw;


 switch (hw->mac.type) {
 case 134:
 case 130:

  break;
 case 133:
 case 132:
 case 129:
 case 128:
 case 131:
 default:



  if (adapter->rss_queues > (max_rss_queues / 2))
   adapter->flags |= IGB_FLAG_QUEUE_PAIRS;
  else
   adapter->flags &= ~IGB_FLAG_QUEUE_PAIRS;
  break;
 }
}
