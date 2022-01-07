
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnxt {int net_stats_prev; scalar_t__ bnapi; int pdev; int state; int timer; } ;


 scalar_t__ BNXT_PF (struct bnxt*) ;
 int BNXT_STATE_IN_FW_RESET ;
 int BNXT_STATE_OPEN ;
 int bnxt_debug_dev_exit (struct bnxt*) ;
 int bnxt_del_napi (struct bnxt*) ;
 int bnxt_disable_napi (struct bnxt*) ;
 scalar_t__ bnxt_drv_busy (struct bnxt*) ;
 int bnxt_free_irq (struct bnxt*) ;
 int bnxt_free_mem (struct bnxt*,int) ;
 int bnxt_free_skbs (struct bnxt*) ;
 int bnxt_get_ring_stats (struct bnxt*,int *) ;
 int bnxt_shutdown_nic (struct bnxt*,int) ;
 int bnxt_tx_disable (struct bnxt*) ;
 int bnxt_vf_reps_close (struct bnxt*) ;
 int clear_bit (int ,int *) ;
 int del_timer_sync (int *) ;
 int msleep (int) ;
 int pci_disable_device (int ) ;
 scalar_t__ pci_is_enabled (int ) ;
 int smp_mb__after_atomic () ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void __bnxt_close_nic(struct bnxt *bp, bool irq_re_init,
        bool link_re_init)
{

 if (BNXT_PF(bp))
  bnxt_vf_reps_close(bp);


 bnxt_tx_disable(bp);

 clear_bit(BNXT_STATE_OPEN, &bp->state);
 smp_mb__after_atomic();
 while (bnxt_drv_busy(bp))
  msleep(20);


 bnxt_shutdown_nic(bp, irq_re_init);



 bnxt_debug_dev_exit(bp);
 bnxt_disable_napi(bp);
 del_timer_sync(&bp->timer);
 if (test_bit(BNXT_STATE_IN_FW_RESET, &bp->state) &&
     pci_is_enabled(bp->pdev))
  pci_disable_device(bp->pdev);

 bnxt_free_skbs(bp);


 if (bp->bnapi)
  bnxt_get_ring_stats(bp, &bp->net_stats_prev);
 if (irq_re_init) {
  bnxt_free_irq(bp);
  bnxt_del_napi(bp);
 }
 bnxt_free_mem(bp, irq_re_init);
}
