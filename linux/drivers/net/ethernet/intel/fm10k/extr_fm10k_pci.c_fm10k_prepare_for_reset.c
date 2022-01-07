
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fm10k_intfc {scalar_t__ last_reset; int pdev; int state; struct net_device* netdev; } ;


 int HZ ;
 int WARN_ON (int ) ;
 int __FM10K_RESETTING ;
 int fm10k_clear_queueing_scheme (struct fm10k_intfc*) ;
 int fm10k_close (struct net_device*) ;
 int fm10k_iov_suspend (int ) ;
 int fm10k_mbx_free_irq (struct fm10k_intfc*) ;
 int fm10k_stop_macvlan_task (struct fm10k_intfc*) ;
 int in_interrupt () ;
 scalar_t__ jiffies ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_trans_update (struct net_device*) ;
 int rtnl_lock () ;
 int rtnl_unlock () ;
 scalar_t__ test_and_set_bit (int ,int ) ;

__attribute__((used)) static bool fm10k_prepare_for_reset(struct fm10k_intfc *interface)
{
 struct net_device *netdev = interface->netdev;

 WARN_ON(in_interrupt());


 netif_trans_update(netdev);


 if (test_and_set_bit(__FM10K_RESETTING, interface->state))
  return 0;





 fm10k_stop_macvlan_task(interface);

 rtnl_lock();

 fm10k_iov_suspend(interface->pdev);

 if (netif_running(netdev))
  fm10k_close(netdev);

 fm10k_mbx_free_irq(interface);


 fm10k_clear_queueing_scheme(interface);


 interface->last_reset = jiffies + (10 * HZ);

 rtnl_unlock();

 return 1;
}
