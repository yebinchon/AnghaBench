
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fm10k_intfc {int num_rx_queues; int num_tx_queues; } ;


 int fm10k_free_all_rx_resources (struct fm10k_intfc*) ;
 int fm10k_free_all_tx_resources (struct fm10k_intfc*) ;
 int fm10k_qv_free_irq (struct fm10k_intfc*) ;
 int fm10k_qv_request_irq (struct fm10k_intfc*) ;
 int fm10k_request_glort_range (struct fm10k_intfc*) ;
 int fm10k_setup_all_rx_resources (struct fm10k_intfc*) ;
 int fm10k_setup_all_tx_resources (struct fm10k_intfc*) ;
 int fm10k_up (struct fm10k_intfc*) ;
 struct fm10k_intfc* netdev_priv (struct net_device*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;
 int udp_tunnel_get_rx_info (struct net_device*) ;

int fm10k_open(struct net_device *netdev)
{
 struct fm10k_intfc *interface = netdev_priv(netdev);
 int err;


 err = fm10k_setup_all_tx_resources(interface);
 if (err)
  goto err_setup_tx;


 err = fm10k_setup_all_rx_resources(interface);
 if (err)
  goto err_setup_rx;


 err = fm10k_qv_request_irq(interface);
 if (err)
  goto err_req_irq;


 fm10k_request_glort_range(interface);


 err = netif_set_real_num_tx_queues(netdev,
        interface->num_tx_queues);
 if (err)
  goto err_set_queues;

 err = netif_set_real_num_rx_queues(netdev,
        interface->num_rx_queues);
 if (err)
  goto err_set_queues;

 udp_tunnel_get_rx_info(netdev);

 fm10k_up(interface);

 return 0;

err_set_queues:
 fm10k_qv_free_irq(interface);
err_req_irq:
 fm10k_free_all_rx_resources(interface);
err_setup_rx:
 fm10k_free_all_tx_resources(interface);
err_setup_tx:
 return err;
}
