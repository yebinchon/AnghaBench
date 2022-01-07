
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxon_cmd {int dev_type; int channel; int air_propagation; int ofdm_ht_single_stream_basic_rates; int ofdm_ht_dual_stream_basic_rates; int ofdm_ht_triple_stream_basic_rates; int assoc_id; int flags; int filter_flags; int wlap_bssid_addr; int node_addr; int bssid_addr; } ;
struct iwl_rxon_context {struct iwl_rxon_cmd active; struct iwl_rxon_cmd staging; } ;
struct iwl_priv {int dummy; } ;


 int CHK (int) ;
 int CHK_NEQ (int,int) ;
 int RXON_FILTER_ASSOC_MSK ;
 int RXON_FLG_BAND_24G_MSK ;
 int ether_addr_equal (int ,int ) ;
 int iwl_is_associated_ctx (struct iwl_rxon_context*) ;

__attribute__((used)) static int iwl_full_rxon_required(struct iwl_priv *priv,
      struct iwl_rxon_context *ctx)
{
 const struct iwl_rxon_cmd *staging = &ctx->staging;
 const struct iwl_rxon_cmd *active = &ctx->active;
 if ((!iwl_is_associated_ctx(ctx))) { IWL_DEBUG_INFO(priv, "need full RXON - " "!iwl_is_associated_ctx(ctx)" "\n"); return 1; };
 if ((!ether_addr_equal(staging->bssid_addr, active->bssid_addr))) { IWL_DEBUG_INFO(priv, "need full RXON - " "!ether_addr_equal(staging->bssid_addr, active->bssid_addr)" "\n"); return 1; };
 if ((!ether_addr_equal(staging->node_addr, active->node_addr))) { IWL_DEBUG_INFO(priv, "need full RXON - " "!ether_addr_equal(staging->node_addr, active->node_addr)" "\n"); return 1; };
 if ((!ether_addr_equal(staging->wlap_bssid_addr, active->wlap_bssid_addr))) { IWL_DEBUG_INFO(priv, "need full RXON - " "!ether_addr_equal(staging->wlap_bssid_addr, active->wlap_bssid_addr)" "\n"); return 1; };

 if ((staging->dev_type) != (active->dev_type)) { IWL_DEBUG_INFO(priv, "need full RXON - " "staging->dev_type" " != " "active->dev_type" " - %d != %d\n", (staging->dev_type), (active->dev_type)); return 1; };
 if ((staging->channel) != (active->channel)) { IWL_DEBUG_INFO(priv, "need full RXON - " "staging->channel" " != " "active->channel" " - %d != %d\n", (staging->channel), (active->channel)); return 1; };
 if ((staging->air_propagation) != (active->air_propagation)) { IWL_DEBUG_INFO(priv, "need full RXON - " "staging->air_propagation" " != " "active->air_propagation" " - %d != %d\n", (staging->air_propagation), (active->air_propagation)); return 1; };
 if ((staging->ofdm_ht_single_stream_basic_rates) != (active->ofdm_ht_single_stream_basic_rates)) { IWL_DEBUG_INFO(priv, "need full RXON - " "staging->ofdm_ht_single_stream_basic_rates" " != " "active->ofdm_ht_single_stream_basic_rates" " - %d != %d\n", (staging->ofdm_ht_single_stream_basic_rates), (active->ofdm_ht_single_stream_basic_rates)); return 1; };

 if ((staging->ofdm_ht_dual_stream_basic_rates) != (active->ofdm_ht_dual_stream_basic_rates)) { IWL_DEBUG_INFO(priv, "need full RXON - " "staging->ofdm_ht_dual_stream_basic_rates" " != " "active->ofdm_ht_dual_stream_basic_rates" " - %d != %d\n", (staging->ofdm_ht_dual_stream_basic_rates), (active->ofdm_ht_dual_stream_basic_rates)); return 1; };

 if ((staging->ofdm_ht_triple_stream_basic_rates) != (active->ofdm_ht_triple_stream_basic_rates)) { IWL_DEBUG_INFO(priv, "need full RXON - " "staging->ofdm_ht_triple_stream_basic_rates" " != " "active->ofdm_ht_triple_stream_basic_rates" " - %d != %d\n", (staging->ofdm_ht_triple_stream_basic_rates), (active->ofdm_ht_triple_stream_basic_rates)); return 1; };

 if ((staging->assoc_id) != (active->assoc_id)) { IWL_DEBUG_INFO(priv, "need full RXON - " "staging->assoc_id" " != " "active->assoc_id" " - %d != %d\n", (staging->assoc_id), (active->assoc_id)); return 1; };






 if ((staging->flags & RXON_FLG_BAND_24G_MSK) != (active->flags & RXON_FLG_BAND_24G_MSK)) { IWL_DEBUG_INFO(priv, "need full RXON - " "staging->flags & RXON_FLG_BAND_24G_MSK" " != " "active->flags & RXON_FLG_BAND_24G_MSK" " - %d != %d\n", (staging->flags & RXON_FLG_BAND_24G_MSK), (active->flags & RXON_FLG_BAND_24G_MSK)); return 1; };



 if ((staging->filter_flags & RXON_FILTER_ASSOC_MSK) != (active->filter_flags & RXON_FILTER_ASSOC_MSK)) { IWL_DEBUG_INFO(priv, "need full RXON - " "staging->filter_flags & RXON_FILTER_ASSOC_MSK" " != " "active->filter_flags & RXON_FILTER_ASSOC_MSK" " - %d != %d\n", (staging->filter_flags & RXON_FILTER_ASSOC_MSK), (active->filter_flags & RXON_FILTER_ASSOC_MSK)); return 1; };





 return 0;
}
