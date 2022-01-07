
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htt_resp {int dummy; } ;
struct ath10k_hw_params {TYPE_1__* hw_ops; } ;
struct TYPE_2__ {int (* tx_data_rssi_pad_bytes ) (struct htt_resp*) ;} ;


 int stub1 (struct htt_resp*) ;

__attribute__((used)) static inline int
ath10k_tx_data_rssi_get_pad_bytes(struct ath10k_hw_params *hw,
      struct htt_resp *htt)
{
 if (hw->hw_ops->tx_data_rssi_pad_bytes)
  return hw->hw_ops->tx_data_rssi_pad_bytes(htt);
 return 0;
}
