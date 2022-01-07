
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl {int * ac2ep_map; int htc_target; } ;


 int ATH6KL_DATA_PKT_TAG ;
 int WMM_NUM_AC ;
 int ath6kl_htc_flush_txep (int ,int ,int ) ;

void ath6kl_tx_data_cleanup(struct ath6kl *ar)
{
 int i;


 for (i = 0; i < WMM_NUM_AC; i++)
  ath6kl_htc_flush_txep(ar->htc_target, ar->ac2ep_map[i],
          ATH6KL_DATA_PKT_TAG);
}
