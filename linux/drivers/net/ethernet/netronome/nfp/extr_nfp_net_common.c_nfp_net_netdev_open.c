
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_rx_rings; int num_stack_tx_rings; } ;
struct nfp_net {TYPE_1__ dp; } ;
struct net_device {int dummy; } ;


 struct nfp_net* netdev_priv (struct net_device*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;
 int nfp_net_close_free_all (struct nfp_net*) ;
 int nfp_net_open_alloc_all (struct nfp_net*) ;
 int nfp_net_open_stack (struct nfp_net*) ;
 int nfp_net_set_config_and_enable (struct nfp_net*) ;
 int nfp_port_configure (struct net_device*,int) ;

__attribute__((used)) static int nfp_net_netdev_open(struct net_device *netdev)
{
 struct nfp_net *nn = netdev_priv(netdev);
 int err;






 err = nfp_net_open_alloc_all(nn);
 if (err)
  return err;

 err = netif_set_real_num_tx_queues(netdev, nn->dp.num_stack_tx_rings);
 if (err)
  goto err_free_all;

 err = netif_set_real_num_rx_queues(netdev, nn->dp.num_rx_rings);
 if (err)
  goto err_free_all;
 err = nfp_port_configure(netdev, 1);
 if (err)
  goto err_free_all;

 err = nfp_net_set_config_and_enable(nn);
 if (err)
  goto err_port_disable;







 nfp_net_open_stack(nn);

 return 0;

err_port_disable:
 nfp_port_configure(netdev, 0);
err_free_all:
 nfp_net_close_free_all(nn);
 return err;
}
