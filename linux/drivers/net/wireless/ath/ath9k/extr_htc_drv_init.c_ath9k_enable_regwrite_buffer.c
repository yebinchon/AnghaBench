
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {TYPE_1__* wmi; } ;
struct TYPE_2__ {int mwrite_cnt; } ;


 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int atomic_inc (int *) ;

__attribute__((used)) static void ath9k_enable_regwrite_buffer(void *hw_priv)
{
 struct ath_hw *ah = hw_priv;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;

 atomic_inc(&priv->wmi->mwrite_cnt);
}
