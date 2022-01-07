
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int temperature; } ;
struct TYPE_4__ {TYPE_1__ common; int lock; } ;
struct iwl_priv {TYPE_2__ statistics; int temperature; } ;


 int iwl_tt_handler (struct iwl_priv*) ;
 int le32_to_cpu (int ) ;
 int lockdep_assert_held (int *) ;

void iwlagn_temperature(struct iwl_priv *priv)
{
 lockdep_assert_held(&priv->statistics.lock);


 priv->temperature = le32_to_cpu(priv->statistics.common.temperature);
 iwl_tt_handler(priv);
}
