
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * sens; } ;
struct iwl_priv {TYPE_1__ hw_params; } ;


 int iwl5000_sensitivity ;
 int iwl5000_set_ct_threshold (struct iwl_priv*) ;

__attribute__((used)) static void iwl5000_hw_set_hw_params(struct iwl_priv *priv)
{
 iwl5000_set_ct_threshold(priv);


 priv->hw_params.sens = &iwl5000_sensitivity;
}
