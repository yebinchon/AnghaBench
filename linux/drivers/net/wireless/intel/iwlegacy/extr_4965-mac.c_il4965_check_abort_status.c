
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct il_priv {int tx_flush; int workqueue; int status; } ;


 int IL_ERR (char*) ;
 int S_EXIT_PENDING ;
 scalar_t__ TX_STATUS_FAIL_RFKILL_FLUSH ;
 int queue_work (int ,int *) ;
 int test_bit (int ,int *) ;

void
il4965_check_abort_status(struct il_priv *il, u8 frame_count, u32 status)
{
 if (frame_count == 1 && status == TX_STATUS_FAIL_RFKILL_FLUSH) {
  IL_ERR("Tx flush command to flush out all frames\n");
  if (!test_bit(S_EXIT_PENDING, &il->status))
   queue_work(il->workqueue, &il->tx_flush);
 }
}
