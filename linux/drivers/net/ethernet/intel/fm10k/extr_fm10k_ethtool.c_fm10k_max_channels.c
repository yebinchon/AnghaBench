
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct net_device {int dummy; } ;
struct TYPE_3__ {unsigned int max_queues; } ;
struct TYPE_4__ {TYPE_1__ mac; } ;
struct fm10k_intfc {TYPE_2__ hw; } ;


 unsigned int BIT (scalar_t__) ;
 scalar_t__ fls (unsigned int) ;
 int netdev_get_num_tc (struct net_device*) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;

__attribute__((used)) static unsigned int fm10k_max_channels(struct net_device *dev)
{
 struct fm10k_intfc *interface = netdev_priv(dev);
 unsigned int max_combined = interface->hw.mac.max_queues;
 u8 tcs = netdev_get_num_tc(dev);


 if (tcs > 1)
  max_combined = BIT((fls(max_combined / tcs) - 1));

 return max_combined;
}
