
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct htt_resp {int dummy; } ;
struct ath10k_hw_params {TYPE_1__* hw_ops; } ;
struct TYPE_2__ {int (* is_rssi_enable ) (struct htt_resp*) ;} ;


 int stub1 (struct htt_resp*) ;

__attribute__((used)) static inline int
ath10k_is_rssi_enable(struct ath10k_hw_params *hw,
        struct htt_resp *resp)
{
 if (hw->hw_ops->is_rssi_enable)
  return hw->hw_ops->is_rssi_enable(resp);
 return 0;
}
