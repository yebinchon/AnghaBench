
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct iwl_scale_tbl_info {int dummy; } ;
struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {int dummy; } ;
struct iwl_lq_sta {int lq; } ;


 int CMD_ASYNC ;
 int iwl_send_lq_cmd (struct iwl_priv*,struct iwl_rxon_context*,int *,int ,int) ;
 int rate_n_flags_from_tbl (struct iwl_priv*,struct iwl_scale_tbl_info*,int,int ) ;
 int rs_fill_link_cmd (struct iwl_priv*,struct iwl_lq_sta*,int ) ;

__attribute__((used)) static void rs_update_rate_tbl(struct iwl_priv *priv,
          struct iwl_rxon_context *ctx,
          struct iwl_lq_sta *lq_sta,
          struct iwl_scale_tbl_info *tbl,
          int index, u8 is_green)
{
 u32 rate;


 rate = rate_n_flags_from_tbl(priv, tbl, index, is_green);
 rs_fill_link_cmd(priv, lq_sta, rate);
 iwl_send_lq_cmd(priv, ctx, &lq_sta->lq, CMD_ASYNC, 0);
}
