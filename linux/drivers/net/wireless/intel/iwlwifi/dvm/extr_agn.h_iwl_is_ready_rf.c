
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int dummy; } ;


 int iwl_is_ready (struct iwl_priv*) ;
 scalar_t__ iwl_is_rfkill (struct iwl_priv*) ;

__attribute__((used)) static inline int iwl_is_ready_rf(struct iwl_priv *priv)
{
 if (iwl_is_rfkill(priv))
  return 0;

 return iwl_is_ready(priv);
}
