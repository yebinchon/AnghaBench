
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee80211_hw {struct ath10k* priv; } ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct ath10k {TYPE_2__ hw_params; } ;
typedef int s16 ;
struct TYPE_3__ {int (* set_coverage_class ) (struct ath10k*,int ) ;} ;


 int WARN_ON_ONCE (int) ;
 int stub1 (struct ath10k*,int ) ;

__attribute__((used)) static void ath10k_mac_op_set_coverage_class(struct ieee80211_hw *hw, s16 value)
{
 struct ath10k *ar = hw->priv;




 if (!ar->hw_params.hw_ops->set_coverage_class) {
  WARN_ON_ONCE(1);
  return;
 }
 ar->hw_params.hw_ops->set_coverage_class(ar, value);
}
