
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath10k_htt {TYPE_1__* tx_ops; } ;
struct TYPE_2__ {int (* htt_send_rx_ring_cfg ) (struct ath10k_htt*) ;} ;


 int EOPNOTSUPP ;
 int stub1 (struct ath10k_htt*) ;

__attribute__((used)) static inline int ath10k_htt_send_rx_ring_cfg(struct ath10k_htt *htt)
{
 if (!htt->tx_ops->htt_send_rx_ring_cfg)
  return -EOPNOTSUPP;

 return htt->tx_ops->htt_send_rx_ring_cfg(htt);
}
