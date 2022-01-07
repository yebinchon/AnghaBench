
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int state; } ;
struct iavf_adapter {int aq_required; TYPE_1__ vsi; struct net_device* netdev; } ;


 int IAVF_FLAG_AQ_CONFIGURE_RSS ;
 scalar_t__ RSS_AQ (struct iavf_adapter*) ;
 int __IAVF_VSI_DOWN ;
 int iavf_free_misc_irq (struct iavf_adapter*) ;
 int iavf_free_q_vectors (struct iavf_adapter*) ;
 int iavf_free_queues (struct iavf_adapter*) ;
 int iavf_free_traffic_irqs (struct iavf_adapter*) ;
 int iavf_init_interrupt_scheme (struct iavf_adapter*) ;
 int iavf_init_rss (struct iavf_adapter*) ;
 int iavf_map_rings_to_vectors (struct iavf_adapter*) ;
 int iavf_request_misc_irq (struct iavf_adapter*) ;
 int iavf_reset_interrupt_capability (struct iavf_adapter*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int netif_tx_stop_all_queues (struct net_device*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static int iavf_reinit_interrupt_scheme(struct iavf_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int err;

 if (netif_running(netdev))
  iavf_free_traffic_irqs(adapter);
 iavf_free_misc_irq(adapter);
 iavf_reset_interrupt_capability(adapter);
 iavf_free_q_vectors(adapter);
 iavf_free_queues(adapter);

 err = iavf_init_interrupt_scheme(adapter);
 if (err)
  goto err;

 netif_tx_stop_all_queues(netdev);

 err = iavf_request_misc_irq(adapter);
 if (err)
  goto err;

 set_bit(__IAVF_VSI_DOWN, adapter->vsi.state);

 iavf_map_rings_to_vectors(adapter);

 if (RSS_AQ(adapter))
  adapter->aq_required |= IAVF_FLAG_AQ_CONFIGURE_RSS;
 else
  err = iavf_init_rss(adapter);
err:
 return err;
}
