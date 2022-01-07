
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct net_device {int dummy; } ;
struct hns_nic_priv {int state; int netdev; TYPE_1__* ae_handle; } ;
struct ethtool_test {int flags; } ;
typedef enum hnae_loop { ____Placeholder_hnae_loop } hnae_loop ;
struct TYPE_2__ {scalar_t__ phy_if; int phy_dev; } ;


 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 int MAC_INTERNALLOOP_MAC ;
 int MAC_INTERNALLOOP_PHY ;
 int MAC_INTERNALLOOP_SERDES ;
 int NIC_STATE_TESTING ;
 scalar_t__ PHY_INTERFACE_MODE_XGMII ;
 int SELF_TEST_TPYE_NUM ;
 int __lb_down (struct net_device*,int) ;
 scalar_t__ __lb_run_test (struct net_device*,int) ;
 scalar_t__ __lb_up (struct net_device*,int) ;
 int clear_bit (int ,int *) ;
 int dev_close (struct net_device*) ;
 int dev_open (struct net_device*,int *) ;
 int hns_nic_net_reset (int ) ;
 int msleep_interruptible (int) ;
 struct hns_nic_priv* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static void hns_nic_self_test(struct net_device *ndev,
         struct ethtool_test *eth_test, u64 *data)
{
 struct hns_nic_priv *priv = netdev_priv(ndev);
 bool if_running = netif_running(ndev);

 int st_param[3][2];
 int i;
 int test_index = 0;

 st_param[0][0] = MAC_INTERNALLOOP_MAC;
 st_param[0][1] = (priv->ae_handle->phy_if != PHY_INTERFACE_MODE_XGMII);
 st_param[1][0] = MAC_INTERNALLOOP_SERDES;
 st_param[1][1] = 1;
 st_param[2][0] = MAC_INTERNALLOOP_PHY;
 st_param[2][1] = ((!!(priv->ae_handle->phy_dev)) &&
  (priv->ae_handle->phy_if != PHY_INTERFACE_MODE_XGMII));

 if (eth_test->flags == ETH_TEST_FL_OFFLINE) {
  set_bit(NIC_STATE_TESTING, &priv->state);

  if (if_running)
   dev_close(ndev);

  for (i = 0; i < 3; i++) {
   if (!st_param[i][1])
    continue;

   data[test_index] = __lb_up(ndev,
    (enum hnae_loop)st_param[i][0]);
   if (!data[test_index]) {
    data[test_index] = __lb_run_test(
     ndev, (enum hnae_loop)st_param[i][0]);
    (void)__lb_down(ndev,
      (enum hnae_loop)st_param[i][0]);
   }

   if (data[test_index])
    eth_test->flags |= ETH_TEST_FL_FAILED;

   test_index++;
  }

  hns_nic_net_reset(priv->netdev);

  clear_bit(NIC_STATE_TESTING, &priv->state);

  if (if_running)
   (void)dev_open(ndev, ((void*)0));
 }


 (void)msleep_interruptible(4 * 1000);
}
