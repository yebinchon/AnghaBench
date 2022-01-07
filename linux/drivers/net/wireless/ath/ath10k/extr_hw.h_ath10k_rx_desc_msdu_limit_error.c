
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htt_rx_desc {int dummy; } ;
struct ath10k_hw_params {TYPE_1__* hw_ops; } ;
struct TYPE_2__ {int (* rx_desc_get_msdu_limit_error ) (struct htt_rx_desc*) ;} ;


 int stub1 (struct htt_rx_desc*) ;

__attribute__((used)) static inline bool
ath10k_rx_desc_msdu_limit_error(struct ath10k_hw_params *hw,
    struct htt_rx_desc *rxd)
{
 if (hw->hw_ops->rx_desc_get_msdu_limit_error)
  return hw->hw_ops->rx_desc_get_msdu_limit_error(rxd);
 return 0;
}
