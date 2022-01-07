
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_htt {TYPE_1__* tx_ops; } ;
struct TYPE_2__ {int (* htt_free_txbuff ) (struct ath10k_htt*) ;} ;


 int stub1 (struct ath10k_htt*) ;

__attribute__((used)) static inline void ath10k_htt_free_txbuff(struct ath10k_htt *htt)
{
 if (htt->tx_ops->htt_free_txbuff)
  htt->tx_ops->htt_free_txbuff(htt);
}
