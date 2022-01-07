
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hns_nic_priv {int state; struct hnae_handle* ae_handle; } ;
struct hnae_handle {int dummy; } ;


 int NIC_STATE_RESETTING ;
 int clear_bit (int ,int *) ;
 int hnae_reinit_handle (struct hnae_handle*) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usleep_range (int,int) ;

void hns_nic_net_reset(struct net_device *ndev)
{
 struct hns_nic_priv *priv = netdev_priv(ndev);
 struct hnae_handle *handle = priv->ae_handle;

 while (test_and_set_bit(NIC_STATE_RESETTING, &priv->state))
  usleep_range(1000, 2000);

 (void)hnae_reinit_handle(handle);

 clear_bit(NIC_STATE_RESETTING, &priv->state);
}
