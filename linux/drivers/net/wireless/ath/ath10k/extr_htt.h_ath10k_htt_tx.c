
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ath10k_htt {TYPE_1__* tx_ops; } ;
typedef enum ath10k_hw_txrx_mode { ____Placeholder_ath10k_hw_txrx_mode } ath10k_hw_txrx_mode ;
struct TYPE_2__ {int (* htt_tx ) (struct ath10k_htt*,int,struct sk_buff*) ;} ;


 int stub1 (struct ath10k_htt*,int,struct sk_buff*) ;

__attribute__((used)) static inline int ath10k_htt_tx(struct ath10k_htt *htt,
    enum ath10k_hw_txrx_mode txmode,
    struct sk_buff *msdu)
{
 return htt->tx_ops->htt_tx(htt, txmode, msdu);
}
