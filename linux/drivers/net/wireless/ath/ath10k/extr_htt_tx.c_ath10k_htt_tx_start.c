
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_htt {int tx_mem_allocated; int pending_tx; int tx_lock; int max_num_pending_tx; struct ath10k* ar; } ;
struct TYPE_2__ {scalar_t__ dev_type; } ;
struct ath10k {TYPE_1__ bus_param; } ;


 int ATH10K_DBG_BOOT ;
 scalar_t__ ATH10K_DEV_TYPE_HL ;
 int ath10k_dbg (struct ath10k*,int ,char*,int ) ;
 int ath10k_htt_tx_alloc_buf (struct ath10k_htt*) ;
 int idr_destroy (int *) ;
 int idr_init (int *) ;
 int spin_lock_init (int *) ;

int ath10k_htt_tx_start(struct ath10k_htt *htt)
{
 struct ath10k *ar = htt->ar;
 int ret;

 ath10k_dbg(ar, ATH10K_DBG_BOOT, "htt tx max num pending tx %d\n",
     htt->max_num_pending_tx);

 spin_lock_init(&htt->tx_lock);
 idr_init(&htt->pending_tx);

 if (htt->tx_mem_allocated)
  return 0;

 if (ar->bus_param.dev_type == ATH10K_DEV_TYPE_HL)
  return 0;

 ret = ath10k_htt_tx_alloc_buf(htt);
 if (ret)
  goto free_idr_pending_tx;

 htt->tx_mem_allocated = 1;

 return 0;

free_idr_pending_tx:
 idr_destroy(&htt->pending_tx);

 return ret;
}
