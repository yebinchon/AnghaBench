
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int ct_enter; int workqueue; int status; } ;


 int IWL_DEBUG_TEMP (struct iwl_priv*,char*) ;
 int STATUS_EXIT_PENDING ;
 int queue_work (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void iwl_tt_enter_ct_kill(struct iwl_priv *priv)
{
 if (test_bit(STATUS_EXIT_PENDING, &priv->status))
  return;

 IWL_DEBUG_TEMP(priv, "Queueing critical temperature enter.\n");
 queue_work(priv->workqueue, &priv->ct_enter);
}
