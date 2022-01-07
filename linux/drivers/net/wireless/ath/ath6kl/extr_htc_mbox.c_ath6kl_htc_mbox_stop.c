
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_target {int dev; int htc_lock; int htc_flags; } ;


 int HTC_OP_STATE_STOPPING ;
 int ath6kl_hif_mask_intrs (int ) ;
 int ath6kl_htc_flush_txep_all (struct htc_target*) ;
 int ath6kl_htc_mbox_flush_rx_buf (struct htc_target*) ;
 int ath6kl_htc_reset (struct htc_target*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void ath6kl_htc_mbox_stop(struct htc_target *target)
{
 spin_lock_bh(&target->htc_lock);
 target->htc_flags |= HTC_OP_STATE_STOPPING;
 spin_unlock_bh(&target->htc_lock);






 ath6kl_hif_mask_intrs(target->dev);

 ath6kl_htc_flush_txep_all(target);

 ath6kl_htc_mbox_flush_rx_buf(target);

 ath6kl_htc_reset(target);
}
