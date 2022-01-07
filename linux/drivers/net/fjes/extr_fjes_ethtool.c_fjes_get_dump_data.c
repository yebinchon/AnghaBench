
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int trace_size; scalar_t__ trace; } ;
struct fjes_hw {TYPE_1__ hw_info; } ;
struct fjes_adapter {struct fjes_hw hw; } ;
struct ethtool_dump {int dummy; } ;


 int EPERM ;
 int memcpy (void*,scalar_t__,int ) ;
 struct fjes_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fjes_get_dump_data(struct net_device *netdev,
         struct ethtool_dump *dump, void *buf)
{
 struct fjes_adapter *adapter = netdev_priv(netdev);
 struct fjes_hw *hw = &adapter->hw;
 int ret = 0;

 if (hw->hw_info.trace)
  memcpy(buf, hw->hw_info.trace, hw->hw_info.trace_size);
 else
  ret = -EPERM;

 return ret;
}
