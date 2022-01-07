
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct hns_nic_priv {scalar_t__ link; int state; struct hnae_handle* ae_handle; } ;
struct hnae_handle {int q_num; } ;


 int EBUSY ;
 int NIC_STATE_TESTING ;
 int hns_nic_net_up (struct net_device*) ;
 int netdev_err (struct net_device*,char*,int) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_set_real_num_rx_queues (struct net_device*,int ) ;
 int netif_set_real_num_tx_queues (struct net_device*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int hns_nic_net_open(struct net_device *ndev)
{
 struct hns_nic_priv *priv = netdev_priv(ndev);
 struct hnae_handle *h = priv->ae_handle;
 int ret;

 if (test_bit(NIC_STATE_TESTING, &priv->state))
  return -EBUSY;

 priv->link = 0;
 netif_carrier_off(ndev);

 ret = netif_set_real_num_tx_queues(ndev, h->q_num);
 if (ret < 0) {
  netdev_err(ndev, "netif_set_real_num_tx_queues fail, ret=%d!\n",
      ret);
  return ret;
 }

 ret = netif_set_real_num_rx_queues(ndev, h->q_num);
 if (ret < 0) {
  netdev_err(ndev,
      "netif_set_real_num_rx_queues fail, ret=%d!\n", ret);
  return ret;
 }

 ret = hns_nic_net_up(ndev);
 if (ret) {
  netdev_err(ndev,
      "hns net up fail, ret=%d!\n", ret);
  return ret;
 }

 return 0;
}
