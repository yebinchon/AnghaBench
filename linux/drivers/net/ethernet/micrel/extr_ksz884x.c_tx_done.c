
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct ksz_hw {int dev_count; TYPE_1__* port_info; } ;
struct dev_info {struct ksz_hw hw; } ;
struct TYPE_2__ {struct net_device* pdev; } ;


 scalar_t__ netif_queue_stopped (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int transmit_cleanup (struct dev_info*,int) ;

__attribute__((used)) static void tx_done(struct dev_info *hw_priv)
{
 struct ksz_hw *hw = &hw_priv->hw;
 int port;

 transmit_cleanup(hw_priv, 1);

 for (port = 0; port < hw->dev_count; port++) {
  struct net_device *dev = hw->port_info[port].pdev;

  if (netif_running(dev) && netif_queue_stopped(dev))
   netif_wake_queue(dev);
 }
}
