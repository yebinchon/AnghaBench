
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u32 ;
struct iwl_priv {int tx_flush; int workqueue; int status; } ;


 int IWL_ERR (struct iwl_priv*,char*) ;
 int STATUS_EXIT_PENDING ;
 scalar_t__ TX_STATUS_FAIL_RFKILL_FLUSH ;
 int queue_work (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void iwl_check_abort_status(struct iwl_priv *priv,
       u8 frame_count, u32 status)
{
 if (frame_count == 1 && status == TX_STATUS_FAIL_RFKILL_FLUSH) {
  IWL_ERR(priv, "Tx flush command to flush out all frames\n");
  if (!test_bit(STATUS_EXIT_PENDING, &priv->status))
   queue_work(priv->workqueue, &priv->tx_flush);
 }
}
