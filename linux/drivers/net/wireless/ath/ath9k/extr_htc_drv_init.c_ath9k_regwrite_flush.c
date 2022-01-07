
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ath_hw {int dummy; } ;
struct ath_common {scalar_t__ priv; } ;
struct ath9k_htc_priv {TYPE_1__* wmi; } ;
struct TYPE_2__ {int multi_write_mutex; scalar_t__ multi_write_idx; int mwrite_cnt; } ;


 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_regwrite_multi (struct ath_common*) ;
 int atomic_dec (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void ath9k_regwrite_flush(void *hw_priv)
{
 struct ath_hw *ah = hw_priv;
 struct ath_common *common = ath9k_hw_common(ah);
 struct ath9k_htc_priv *priv = (struct ath9k_htc_priv *) common->priv;

 atomic_dec(&priv->wmi->mwrite_cnt);

 mutex_lock(&priv->wmi->multi_write_mutex);

 if (priv->wmi->multi_write_idx)
  ath9k_regwrite_multi(common);

 mutex_unlock(&priv->wmi->multi_write_mutex);
}
