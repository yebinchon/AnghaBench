
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statistics_block {int dummy; } ;
struct net_device {int dummy; } ;
struct bnx2 {int flags; int timer; int dev; int temp_stats_blk; int intr_sem; scalar_t__ current_interval; } ;


 int BNX2_FLAG_USING_MSI ;
 int BNX2_FLAG_USING_MSIX ;
 int atomic_set (int *,int ) ;
 int bnx2_alloc_mem (struct bnx2*) ;
 int bnx2_del_napi (struct bnx2*) ;
 int bnx2_disable_int (struct bnx2*) ;
 int bnx2_enable_int (struct bnx2*) ;
 int bnx2_free_irq (struct bnx2*) ;
 int bnx2_free_mem (struct bnx2*) ;
 int bnx2_free_skbs (struct bnx2*) ;
 int bnx2_init_napi (struct bnx2*) ;
 int bnx2_init_nic (struct bnx2*,int) ;
 int bnx2_napi_disable (struct bnx2*) ;
 int bnx2_napi_enable (struct bnx2*) ;
 int bnx2_release_firmware (struct bnx2*) ;
 int bnx2_request_firmware (struct bnx2*) ;
 int bnx2_request_irq (struct bnx2*) ;
 int bnx2_setup_int_mode (struct bnx2*,int) ;
 scalar_t__ bnx2_test_intr (struct bnx2*) ;
 int del_timer_sync (int *) ;
 int disable_msi ;
 scalar_t__ jiffies ;
 int memset (int ,int ,int) ;
 int mod_timer (int *,scalar_t__) ;
 int netdev_info (struct net_device*,char*) ;
 struct bnx2* netdev_priv (struct net_device*) ;
 int netdev_warn (int ,char*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_tx_start_all_queues (struct net_device*) ;

__attribute__((used)) static int
bnx2_open(struct net_device *dev)
{
 struct bnx2 *bp = netdev_priv(dev);
 int rc;

 rc = bnx2_request_firmware(bp);
 if (rc < 0)
  goto out;

 netif_carrier_off(dev);

 bnx2_disable_int(bp);

 rc = bnx2_setup_int_mode(bp, disable_msi);
 if (rc)
  goto open_err;
 bnx2_init_napi(bp);
 bnx2_napi_enable(bp);
 rc = bnx2_alloc_mem(bp);
 if (rc)
  goto open_err;

 rc = bnx2_request_irq(bp);
 if (rc)
  goto open_err;

 rc = bnx2_init_nic(bp, 1);
 if (rc)
  goto open_err;

 mod_timer(&bp->timer, jiffies + bp->current_interval);

 atomic_set(&bp->intr_sem, 0);

 memset(bp->temp_stats_blk, 0, sizeof(struct statistics_block));

 bnx2_enable_int(bp);

 if (bp->flags & BNX2_FLAG_USING_MSI) {



  if (bnx2_test_intr(bp) != 0) {
   netdev_warn(bp->dev, "No interrupt was generated using MSI, switching to INTx mode. Please report this failure to the PCI maintainer and include system chipset information.\n");

   bnx2_disable_int(bp);
   bnx2_free_irq(bp);

   bnx2_setup_int_mode(bp, 1);

   rc = bnx2_init_nic(bp, 0);

   if (!rc)
    rc = bnx2_request_irq(bp);

   if (rc) {
    del_timer_sync(&bp->timer);
    goto open_err;
   }
   bnx2_enable_int(bp);
  }
 }
 if (bp->flags & BNX2_FLAG_USING_MSI)
  netdev_info(dev, "using MSI\n");
 else if (bp->flags & BNX2_FLAG_USING_MSIX)
  netdev_info(dev, "using MSIX\n");

 netif_tx_start_all_queues(dev);
out:
 return rc;

open_err:
 bnx2_napi_disable(bp);
 bnx2_free_skbs(bp);
 bnx2_free_irq(bp);
 bnx2_free_mem(bp);
 bnx2_del_napi(bp);
 bnx2_release_firmware(bp);
 goto out;
}
