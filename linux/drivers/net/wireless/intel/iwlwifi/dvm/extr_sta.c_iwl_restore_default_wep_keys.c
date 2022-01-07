
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {int mutex; } ;


 int iwl_send_static_wepkey_cmd (struct iwl_priv*,struct iwl_rxon_context*,int) ;
 int lockdep_assert_held (int *) ;

int iwl_restore_default_wep_keys(struct iwl_priv *priv,
     struct iwl_rxon_context *ctx)
{
 lockdep_assert_held(&priv->mutex);

 return iwl_send_static_wepkey_cmd(priv, ctx, 0);
}
