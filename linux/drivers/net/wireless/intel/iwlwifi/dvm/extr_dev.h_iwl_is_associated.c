
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_priv {int * contexts; } ;
typedef enum iwl_rxon_context_id { ____Placeholder_iwl_rxon_context_id } iwl_rxon_context_id ;


 int iwl_is_associated_ctx (int *) ;

__attribute__((used)) static inline int iwl_is_associated(struct iwl_priv *priv,
        enum iwl_rxon_context_id ctxid)
{
 return iwl_is_associated_ctx(&priv->contexts[ctxid]);
}
