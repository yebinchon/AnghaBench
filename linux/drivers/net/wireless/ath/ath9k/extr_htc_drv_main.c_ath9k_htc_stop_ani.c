
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_common {int op_flags; } ;
struct ath9k_htc_priv {int ani_work; int ah; } ;


 int ATH_OP_ANI_RUN ;
 struct ath_common* ath9k_hw_common (int ) ;
 int cancel_delayed_work_sync (int *) ;
 int clear_bit (int ,int *) ;

void ath9k_htc_stop_ani(struct ath9k_htc_priv *priv)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 cancel_delayed_work_sync(&priv->ani_work);
 clear_bit(ATH_OP_ANI_RUN, &common->op_flags);
}
