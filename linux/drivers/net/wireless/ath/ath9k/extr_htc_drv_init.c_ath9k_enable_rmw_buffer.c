
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {TYPE_1__* wmi; int fw_flags; } ;
struct TYPE_2__ {int m_rmw_cnt; } ;


 int HTC_FWFLAG_NO_RMW ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int atomic_inc (int *) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ath9k_enable_rmw_buffer(void *hw_priv)
{
 struct ath_hw *ah = hw_priv;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;

 if (test_bit(HTC_FWFLAG_NO_RMW, &priv->fw_flags))
  return;

 atomic_inc(&priv->wmi->m_rmw_cnt);
}
