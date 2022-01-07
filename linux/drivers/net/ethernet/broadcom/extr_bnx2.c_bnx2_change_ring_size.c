
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int drv_state; } ;
struct bnx2 {int cnic_lock; TYPE_1__ cnic_eth_dev; int dev; int tx_ring_size; } ;


 int BNX2_DRV_MSG_CODE_RESET ;
 int CNIC_DRV_STATE_REGD ;
 int __bnx2_free_irq (struct bnx2*) ;
 int bnx2_alloc_mem (struct bnx2*) ;
 int bnx2_del_napi (struct bnx2*) ;
 int bnx2_free_irq (struct bnx2*) ;
 int bnx2_free_mem (struct bnx2*) ;
 int bnx2_free_skbs (struct bnx2*) ;
 int bnx2_init_napi (struct bnx2*) ;
 int bnx2_init_nic (struct bnx2*,int ) ;
 int bnx2_napi_enable (struct bnx2*) ;
 int bnx2_netif_start (struct bnx2*,int) ;
 int bnx2_netif_stop (struct bnx2*,int) ;
 int bnx2_request_irq (struct bnx2*) ;
 int bnx2_reset_chip (struct bnx2*,int ) ;
 int bnx2_save_stats (struct bnx2*) ;
 int bnx2_set_rx_ring_size (struct bnx2*,int ) ;
 int bnx2_setup_cnic_irq_info (struct bnx2*) ;
 int bnx2_setup_int_mode (struct bnx2*,int ) ;
 int dev_close (int ) ;
 int disable_msi ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ netif_running (int ) ;

__attribute__((used)) static int
bnx2_change_ring_size(struct bnx2 *bp, u32 rx, u32 tx, bool reset_irq)
{
 if (netif_running(bp->dev)) {

  bnx2_save_stats(bp);

  bnx2_netif_stop(bp, 1);
  bnx2_reset_chip(bp, BNX2_DRV_MSG_CODE_RESET);
  if (reset_irq) {
   bnx2_free_irq(bp);
   bnx2_del_napi(bp);
  } else {
   __bnx2_free_irq(bp);
  }
  bnx2_free_skbs(bp);
  bnx2_free_mem(bp);
 }

 bnx2_set_rx_ring_size(bp, rx);
 bp->tx_ring_size = tx;

 if (netif_running(bp->dev)) {
  int rc = 0;

  if (reset_irq) {
   rc = bnx2_setup_int_mode(bp, disable_msi);
   bnx2_init_napi(bp);
  }

  if (!rc)
   rc = bnx2_alloc_mem(bp);

  if (!rc)
   rc = bnx2_request_irq(bp);

  if (!rc)
   rc = bnx2_init_nic(bp, 0);

  if (rc) {
   bnx2_napi_enable(bp);
   dev_close(bp->dev);
   return rc;
  }







  bnx2_netif_start(bp, 1);
 }
 return 0;
}
