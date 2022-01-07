
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct net_device {int dummy; } ;
struct i40e_pf {int state; TYPE_2__* pdev; } ;
struct i40e_netdev_priv {TYPE_1__* vsi; } ;
struct ethtool_test {int flags; } ;
struct TYPE_4__ {int dev; } ;
struct TYPE_3__ {struct i40e_pf* back; } ;


 int BIT (int ) ;
 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 size_t I40E_ETH_TEST_EEPROM ;
 size_t I40E_ETH_TEST_INTR ;
 size_t I40E_ETH_TEST_LINK ;
 size_t I40E_ETH_TEST_REG ;
 int __I40E_PF_RESET_REQUESTED ;
 int __I40E_TESTING ;
 int clear_bit (int ,int ) ;
 int dev_warn (int *,char*) ;
 int drv ;
 scalar_t__ i40e_active_vfs (struct i40e_pf*) ;
 scalar_t__ i40e_active_vmdqs (struct i40e_pf*) ;
 int i40e_close (struct net_device*) ;
 int i40e_do_reset (struct i40e_pf*,int ,int) ;
 scalar_t__ i40e_eeprom_test (struct net_device*,int*) ;
 scalar_t__ i40e_intr_test (struct net_device*,int*) ;
 scalar_t__ i40e_link_test (struct net_device*,int*) ;
 int i40e_open (struct net_device*) ;
 scalar_t__ i40e_reg_test (struct net_device*,int*) ;
 struct i40e_netdev_priv* netdev_priv (struct net_device*) ;
 int netif_info (struct i40e_pf*,int ,struct net_device*,char*) ;
 int netif_running (struct net_device*) ;
 int set_bit (int ,int ) ;

__attribute__((used)) static void i40e_diag_test(struct net_device *netdev,
      struct ethtool_test *eth_test, u64 *data)
{
 struct i40e_netdev_priv *np = netdev_priv(netdev);
 bool if_running = netif_running(netdev);
 struct i40e_pf *pf = np->vsi->back;

 if (eth_test->flags == ETH_TEST_FL_OFFLINE) {

  netif_info(pf, drv, netdev, "offline testing starting\n");

  set_bit(__I40E_TESTING, pf->state);

  if (i40e_active_vfs(pf) || i40e_active_vmdqs(pf)) {
   dev_warn(&pf->pdev->dev,
     "Please take active VFs and Netqueues offline and restart the adapter before running NIC diagnostics\n");
   data[I40E_ETH_TEST_REG] = 1;
   data[I40E_ETH_TEST_EEPROM] = 1;
   data[I40E_ETH_TEST_INTR] = 1;
   data[I40E_ETH_TEST_LINK] = 1;
   eth_test->flags |= ETH_TEST_FL_FAILED;
   clear_bit(__I40E_TESTING, pf->state);
   goto skip_ol_tests;
  }


  if (if_running)

   i40e_close(netdev);
  else





   i40e_do_reset(pf, BIT(__I40E_PF_RESET_REQUESTED), 1);

  if (i40e_link_test(netdev, &data[I40E_ETH_TEST_LINK]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  if (i40e_eeprom_test(netdev, &data[I40E_ETH_TEST_EEPROM]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  if (i40e_intr_test(netdev, &data[I40E_ETH_TEST_INTR]))
   eth_test->flags |= ETH_TEST_FL_FAILED;


  if (i40e_reg_test(netdev, &data[I40E_ETH_TEST_REG]))
   eth_test->flags |= ETH_TEST_FL_FAILED;

  clear_bit(__I40E_TESTING, pf->state);
  i40e_do_reset(pf, BIT(__I40E_PF_RESET_REQUESTED), 1);

  if (if_running)
   i40e_open(netdev);
 } else {

  netif_info(pf, drv, netdev, "online testing starting\n");

  if (i40e_link_test(netdev, &data[I40E_ETH_TEST_LINK]))
   eth_test->flags |= ETH_TEST_FL_FAILED;


  data[I40E_ETH_TEST_REG] = 0;
  data[I40E_ETH_TEST_EEPROM] = 0;
  data[I40E_ETH_TEST_INTR] = 0;
 }

skip_ol_tests:

 netif_info(pf, drv, netdev, "testing finished\n");
}
