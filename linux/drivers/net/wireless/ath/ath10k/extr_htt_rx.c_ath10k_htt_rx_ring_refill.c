
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int lock; scalar_t__ fill_cnt; scalar_t__ fill_level; } ;
struct ath10k_htt {TYPE_2__ rx_ring; } ;
struct TYPE_3__ {scalar_t__ dev_type; } ;
struct ath10k {TYPE_1__ bus_param; struct ath10k_htt htt; } ;


 scalar_t__ ATH10K_DEV_TYPE_HL ;
 int ath10k_htt_rx_ring_fill_n (struct ath10k_htt*,scalar_t__) ;
 int ath10k_htt_rx_ring_free (struct ath10k_htt*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int ath10k_htt_rx_ring_refill(struct ath10k *ar)
{
 struct ath10k_htt *htt = &ar->htt;
 int ret;

 if (ar->bus_param.dev_type == ATH10K_DEV_TYPE_HL)
  return 0;

 spin_lock_bh(&htt->rx_ring.lock);
 ret = ath10k_htt_rx_ring_fill_n(htt, (htt->rx_ring.fill_level -
           htt->rx_ring.fill_cnt));

 if (ret)
  ath10k_htt_rx_ring_free(htt);

 spin_unlock_bh(&htt->rx_ring.lock);

 return ret;
}
