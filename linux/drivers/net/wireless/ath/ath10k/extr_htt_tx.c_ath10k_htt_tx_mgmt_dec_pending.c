
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ath10k_htt {int num_pending_mgmt_tx; TYPE_2__* ar; int tx_lock; } ;
struct TYPE_3__ {int max_probe_resp_desc_thres; } ;
struct TYPE_4__ {TYPE_1__ hw_params; } ;


 int lockdep_assert_held (int *) ;

void ath10k_htt_tx_mgmt_dec_pending(struct ath10k_htt *htt)
{
 lockdep_assert_held(&htt->tx_lock);

 if (!htt->ar->hw_params.max_probe_resp_desc_thres)
  return;

 htt->num_pending_mgmt_tx--;
}
