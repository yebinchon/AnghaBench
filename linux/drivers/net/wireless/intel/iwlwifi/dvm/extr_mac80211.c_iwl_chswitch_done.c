
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxon_context {scalar_t__ vif; } ;
struct iwl_priv {int status; struct iwl_rxon_context* contexts; } ;


 size_t IWL_RXON_CTX_BSS ;
 int STATUS_CHANNEL_SWITCH_PENDING ;
 int STATUS_EXIT_PENDING ;
 int ieee80211_chswitch_done (scalar_t__,int) ;
 int test_and_clear_bit (int ,int *) ;
 scalar_t__ test_bit (int ,int *) ;

void iwl_chswitch_done(struct iwl_priv *priv, bool is_success)
{




 struct iwl_rxon_context *ctx = &priv->contexts[IWL_RXON_CTX_BSS];

 if (test_bit(STATUS_EXIT_PENDING, &priv->status))
  return;

 if (!test_and_clear_bit(STATUS_CHANNEL_SWITCH_PENDING, &priv->status))
  return;

 if (ctx->vif)
  ieee80211_chswitch_done(ctx->vif, is_success);
}
