
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int * dcbnl_ops; } ;
struct TYPE_2__ {scalar_t__ type; } ;
struct fm10k_hw {TYPE_1__ mac; } ;
struct fm10k_intfc {struct fm10k_hw hw; } ;


 int fm10k_dcbnl_ops ;
 scalar_t__ fm10k_mac_pf ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

void fm10k_dcbnl_set_ops(struct net_device *dev)
{
 struct fm10k_intfc *interface = netdev_priv(dev);
 struct fm10k_hw *hw = &interface->hw;

 if (hw->mac.type == fm10k_mac_pf)
  dev->dcbnl_ops = &fm10k_dcbnl_ops;
}
