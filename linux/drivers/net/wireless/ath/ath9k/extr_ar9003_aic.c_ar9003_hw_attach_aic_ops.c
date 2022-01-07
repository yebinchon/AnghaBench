
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw_private_ops {int is_aic_enabled; } ;
struct ath_hw {int dummy; } ;


 int ar9003_hw_is_aic_enabled ;
 struct ath_hw_private_ops* ath9k_hw_private_ops (struct ath_hw*) ;

void ar9003_hw_attach_aic_ops(struct ath_hw *ah)
{
 struct ath_hw_private_ops *priv_ops = ath9k_hw_private_ops(ah);

 priv_ops->is_aic_enabled = ar9003_hw_is_aic_enabled;
}
