
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long longcal_timer; unsigned long shortcal_timer; unsigned long checkani_timer; } ;
struct ath_common {int hw; int op_flags; TYPE_1__ ani; } ;
struct ath9k_htc_priv {int ani_work; int ah; } ;


 int ATH_ANI_POLLINTERVAL ;
 int ATH_OP_ANI_RUN ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ieee80211_queue_delayed_work (int ,int *,int ) ;
 int jiffies ;
 unsigned long jiffies_to_msecs (int ) ;
 int msecs_to_jiffies (int ) ;
 int set_bit (int ,int *) ;

void ath9k_htc_start_ani(struct ath9k_htc_priv *priv)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 unsigned long timestamp = jiffies_to_msecs(jiffies);

 common->ani.longcal_timer = timestamp;
 common->ani.shortcal_timer = timestamp;
 common->ani.checkani_timer = timestamp;

 set_bit(ATH_OP_ANI_RUN, &common->op_flags);

 ieee80211_queue_delayed_work(common->hw, &priv->ani_work,
         msecs_to_jiffies(ATH_ANI_POLLINTERVAL));
}
