
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int debug_mask; } ;
struct iavf_adapter {int msg_enable; TYPE_1__ hw; } ;


 int IAVF_DEBUG_USER ;
 struct iavf_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void iavf_set_msglevel(struct net_device *netdev, u32 data)
{
 struct iavf_adapter *adapter = netdev_priv(netdev);

 if (IAVF_DEBUG_USER & data)
  adapter->hw.debug_mask = data;
 adapter->msg_enable = data;
}
