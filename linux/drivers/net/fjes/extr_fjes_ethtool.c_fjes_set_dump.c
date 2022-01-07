
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int lock; } ;
struct fjes_hw {TYPE_1__ hw_info; scalar_t__ debug_mode; } ;
struct fjes_adapter {struct fjes_hw hw; } ;
struct ethtool_dump {scalar_t__ flag; } ;


 int EPERM ;
 int fjes_hw_start_debug (struct fjes_hw*) ;
 int fjes_hw_stop_debug (struct fjes_hw*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct fjes_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fjes_set_dump(struct net_device *netdev, struct ethtool_dump *dump)
{
 struct fjes_adapter *adapter = netdev_priv(netdev);
 struct fjes_hw *hw = &adapter->hw;
 int ret = 0;

 if (dump->flag) {
  if (hw->debug_mode)
   return -EPERM;

  hw->debug_mode = dump->flag;


  mutex_lock(&hw->hw_info.lock);
  ret = fjes_hw_start_debug(hw);
  mutex_unlock(&hw->hw_info.lock);

  if (ret)
   hw->debug_mode = 0;
 } else {
  if (!hw->debug_mode)
   return -EPERM;


  mutex_lock(&hw->hw_info.lock);
  ret = fjes_hw_stop_debug(hw);
  mutex_unlock(&hw->hw_info.lock);
 }

 return ret;
}
