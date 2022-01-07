
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int trans; int status; } ;


 int STATUS_POWER_PMI ;
 int clear_bit (int ,int *) ;
 int iwl_trans_set_pmi (int ,int) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void iwl_dvm_set_pmi(struct iwl_priv *priv, bool state)
{
 if (state)
  set_bit(STATUS_POWER_PMI, &priv->status);
 else
  clear_bit(STATUS_POWER_PMI, &priv->status);
 iwl_trans_set_pmi(priv->trans, state);
}
