
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
struct net_device {int dummy; } ;
struct ethtool_test {int flags; } ;
struct TYPE_3__ {scalar_t__ active_vfs; } ;
struct bnxt {int num_tests; TYPE_2__* test_info; TYPE_1__ pf; } ;
struct TYPE_4__ {int flags; int offline_mask; } ;


 int BNXT_DRV_TESTS ;
 size_t BNXT_EXTLPBK_TEST_IDX ;
 size_t BNXT_IRQ_TEST_IDX ;
 size_t BNXT_MACLPBK_TEST_IDX ;
 size_t BNXT_PHYLPBK_TEST_IDX ;
 int BNXT_SINGLE_PF (struct bnxt*) ;
 int BNXT_TEST_FL_EXT_LPBK ;
 int ETH_TEST_FL_EXTERNAL_LB ;
 int ETH_TEST_FL_EXTERNAL_LB_DONE ;
 int ETH_TEST_FL_FAILED ;
 int ETH_TEST_FL_OFFLINE ;
 int bnxt_close_nic (struct bnxt*,int,int) ;
 int bnxt_half_close_nic (struct bnxt*) ;
 int bnxt_half_open_nic (struct bnxt*) ;
 int bnxt_hwrm_mac_loopback (struct bnxt*,int) ;
 int bnxt_hwrm_phy_loopback (struct bnxt*,int,int) ;
 int bnxt_open_nic (struct bnxt*,int,int) ;
 int bnxt_run_fw_tests (struct bnxt*,int,int*) ;
 scalar_t__ bnxt_run_loopback (struct bnxt*) ;
 scalar_t__ bnxt_test_irq (struct bnxt*) ;
 int memset (int*,int ,int) ;
 int msleep (int) ;
 struct bnxt* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_running (struct net_device*) ;

__attribute__((used)) static void bnxt_self_test(struct net_device *dev, struct ethtool_test *etest,
      u64 *buf)
{
 struct bnxt *bp = netdev_priv(dev);
 bool do_ext_lpbk = 0;
 bool offline = 0;
 u8 test_results = 0;
 u8 test_mask = 0;
 int rc = 0, i;

 if (!bp->num_tests || !BNXT_SINGLE_PF(bp))
  return;
 memset(buf, 0, sizeof(u64) * bp->num_tests);
 if (!netif_running(dev)) {
  etest->flags |= ETH_TEST_FL_FAILED;
  return;
 }

 if ((etest->flags & ETH_TEST_FL_EXTERNAL_LB) &&
     (bp->test_info->flags & BNXT_TEST_FL_EXT_LPBK))
  do_ext_lpbk = 1;

 if (etest->flags & ETH_TEST_FL_OFFLINE) {
  if (bp->pf.active_vfs) {
   etest->flags |= ETH_TEST_FL_FAILED;
   netdev_warn(dev, "Offline tests cannot be run with active VFs\n");
   return;
  }
  offline = 1;
 }

 for (i = 0; i < bp->num_tests - BNXT_DRV_TESTS; i++) {
  u8 bit_val = 1 << i;

  if (!(bp->test_info->offline_mask & bit_val))
   test_mask |= bit_val;
  else if (offline)
   test_mask |= bit_val;
 }
 if (!offline) {
  bnxt_run_fw_tests(bp, test_mask, &test_results);
 } else {
  rc = bnxt_close_nic(bp, 0, 0);
  if (rc)
   return;
  bnxt_run_fw_tests(bp, test_mask, &test_results);

  buf[BNXT_MACLPBK_TEST_IDX] = 1;
  bnxt_hwrm_mac_loopback(bp, 1);
  msleep(250);
  rc = bnxt_half_open_nic(bp);
  if (rc) {
   bnxt_hwrm_mac_loopback(bp, 0);
   etest->flags |= ETH_TEST_FL_FAILED;
   return;
  }
  if (bnxt_run_loopback(bp))
   etest->flags |= ETH_TEST_FL_FAILED;
  else
   buf[BNXT_MACLPBK_TEST_IDX] = 0;

  bnxt_hwrm_mac_loopback(bp, 0);
  bnxt_hwrm_phy_loopback(bp, 1, 0);
  msleep(1000);
  if (bnxt_run_loopback(bp)) {
   buf[BNXT_PHYLPBK_TEST_IDX] = 1;
   etest->flags |= ETH_TEST_FL_FAILED;
  }
  if (do_ext_lpbk) {
   etest->flags |= ETH_TEST_FL_EXTERNAL_LB_DONE;
   bnxt_hwrm_phy_loopback(bp, 1, 1);
   msleep(1000);
   if (bnxt_run_loopback(bp)) {
    buf[BNXT_EXTLPBK_TEST_IDX] = 1;
    etest->flags |= ETH_TEST_FL_FAILED;
   }
  }
  bnxt_hwrm_phy_loopback(bp, 0, 0);
  bnxt_half_close_nic(bp);
  rc = bnxt_open_nic(bp, 0, 1);
 }
 if (rc || bnxt_test_irq(bp)) {
  buf[BNXT_IRQ_TEST_IDX] = 1;
  etest->flags |= ETH_TEST_FL_FAILED;
 }
 for (i = 0; i < bp->num_tests - BNXT_DRV_TESTS; i++) {
  u8 bit_val = 1 << i;

  if ((test_mask & bit_val) && !(test_results & bit_val)) {
   buf[i] = 1;
   etest->flags |= ETH_TEST_FL_FAILED;
  }
 }
}
