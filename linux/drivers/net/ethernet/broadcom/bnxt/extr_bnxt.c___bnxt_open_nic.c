
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int phy_retry; scalar_t__ phy_retry_expires; } ;
struct bnxt {int flags; scalar_t__ current_interval; int timer; int state; TYPE_2__* dev; TYPE_1__ link_info; int link_lock; } ;
struct TYPE_7__ {int hw_features; } ;


 int BNXT_FLAG_RFS ;
 int BNXT_FLAG_USING_MSIX ;
 scalar_t__ BNXT_PF (struct bnxt*) ;
 scalar_t__ BNXT_SINGLE_PF (struct bnxt*) ;
 int BNXT_STATE_OPEN ;
 int HZ ;
 int NETIF_F_NTUPLE ;
 int bnxt_alloc_mem (struct bnxt*,int) ;
 int bnxt_debug_dev_exit (struct bnxt*) ;
 int bnxt_debug_dev_init (struct bnxt*) ;
 int bnxt_del_napi (struct bnxt*) ;
 int bnxt_disable_napi (struct bnxt*) ;
 int bnxt_enable_int (struct bnxt*) ;
 int bnxt_enable_napi (struct bnxt*) ;
 int bnxt_free_irq (struct bnxt*) ;
 int bnxt_free_mem (struct bnxt*,int) ;
 int bnxt_free_skbs (struct bnxt*) ;
 int bnxt_get_port_module_status (struct bnxt*) ;
 int bnxt_init_dflt_ring_mode (struct bnxt*) ;
 int bnxt_init_napi (struct bnxt*) ;
 int bnxt_init_nic (struct bnxt*,int) ;
 int bnxt_preset_reg_win (struct bnxt*) ;
 int bnxt_request_irq (struct bnxt*) ;
 int bnxt_reserve_rings (struct bnxt*,int) ;
 int bnxt_tx_enable (struct bnxt*) ;
 int bnxt_update_phy_setting (struct bnxt*) ;
 int bnxt_vf_reps_open (struct bnxt*) ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_err (TYPE_2__*,char*,...) ;
 int netdev_warn (TYPE_2__*,char*) ;
 int netif_carrier_off (TYPE_2__*) ;
 int set_bit (int ,int *) ;
 int udp_tunnel_get_rx_info (TYPE_2__*) ;

__attribute__((used)) static int __bnxt_open_nic(struct bnxt *bp, bool irq_re_init, bool link_re_init)
{
 int rc = 0;

 bnxt_preset_reg_win(bp);
 netif_carrier_off(bp->dev);
 if (irq_re_init) {

  rc = bnxt_init_dflt_ring_mode(bp);
  if (rc) {
   netdev_err(bp->dev, "Failed to reserve default rings at open\n");
   return rc;
  }
 }
 rc = bnxt_reserve_rings(bp, irq_re_init);
 if (rc)
  return rc;
 if ((bp->flags & BNXT_FLAG_RFS) &&
     !(bp->flags & BNXT_FLAG_USING_MSIX)) {

  bp->dev->hw_features &= ~NETIF_F_NTUPLE;
  bp->flags &= ~BNXT_FLAG_RFS;
 }

 rc = bnxt_alloc_mem(bp, irq_re_init);
 if (rc) {
  netdev_err(bp->dev, "bnxt_alloc_mem err: %x\n", rc);
  goto open_err_free_mem;
 }

 if (irq_re_init) {
  bnxt_init_napi(bp);
  rc = bnxt_request_irq(bp);
  if (rc) {
   netdev_err(bp->dev, "bnxt_request_irq err: %x\n", rc);
   goto open_err_irq;
  }
 }

 bnxt_enable_napi(bp);
 bnxt_debug_dev_init(bp);

 rc = bnxt_init_nic(bp, irq_re_init);
 if (rc) {
  netdev_err(bp->dev, "bnxt_init_nic err: %x\n", rc);
  goto open_err;
 }

 if (link_re_init) {
  mutex_lock(&bp->link_lock);
  rc = bnxt_update_phy_setting(bp);
  mutex_unlock(&bp->link_lock);
  if (rc) {
   netdev_warn(bp->dev, "failed to update phy settings\n");
   if (BNXT_SINGLE_PF(bp)) {
    bp->link_info.phy_retry = 1;
    bp->link_info.phy_retry_expires =
     jiffies + 5 * HZ;
   }
  }
 }

 if (irq_re_init)
  udp_tunnel_get_rx_info(bp->dev);

 set_bit(BNXT_STATE_OPEN, &bp->state);
 bnxt_enable_int(bp);

 bnxt_tx_enable(bp);
 mod_timer(&bp->timer, jiffies + bp->current_interval);

 bnxt_get_port_module_status(bp);


 if (BNXT_PF(bp))
  bnxt_vf_reps_open(bp);
 return 0;

open_err:
 bnxt_debug_dev_exit(bp);
 bnxt_disable_napi(bp);

open_err_irq:
 bnxt_del_napi(bp);

open_err_free_mem:
 bnxt_free_skbs(bp);
 bnxt_free_irq(bp);
 bnxt_free_mem(bp, 1);
 return rc;
}
