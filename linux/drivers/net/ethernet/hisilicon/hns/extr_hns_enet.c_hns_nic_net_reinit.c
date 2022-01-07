
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hns_nic_priv {int state; int netdev; TYPE_1__* ae_handle; } ;
typedef enum hnae_port_type { ____Placeholder_hnae_port_type } hnae_port_type ;
struct TYPE_2__ {int port_type; } ;


 int HNAE_PORT_DEBUG ;
 int NIC_STATE_REINITING ;
 int clear_bit (int ,int *) ;
 int hns_nic_net_down (struct net_device*) ;
 int hns_nic_net_reset (struct net_device*) ;
 int hns_nic_net_up (struct net_device*) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int netif_trans_update (int ) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

void hns_nic_net_reinit(struct net_device *netdev)
{
 struct hns_nic_priv *priv = netdev_priv(netdev);
 enum hnae_port_type type = priv->ae_handle->port_type;

 netif_trans_update(priv->netdev);
 while (test_and_set_bit(NIC_STATE_REINITING, &priv->state))
  usleep_range(1000, 2000);

 hns_nic_net_down(netdev);




 if (type == HNAE_PORT_DEBUG)
  hns_nic_net_reset(netdev);

 (void)hns_nic_net_up(netdev);
 clear_bit(NIC_STATE_REINITING, &priv->state);
}
