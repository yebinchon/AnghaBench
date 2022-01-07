
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct iwl_rxon_context {int dummy; } ;
struct iwl_priv {int sta_lock; TYPE_1__* stations; } ;
struct iwl_link_quality_cmd {int dummy; } ;
struct TYPE_2__ {struct iwl_link_quality_cmd* lq; int used; } ;


 int ENOMEM ;
 int IWL_ERR (struct iwl_priv*,char*,...) ;
 size_t IWL_INVALID_STATION ;
 int IWL_STA_LOCAL ;
 int iwl_add_station_common (struct iwl_priv*,struct iwl_rxon_context*,size_t const*,int ,int *,size_t*) ;
 int iwl_send_lq_cmd (struct iwl_priv*,struct iwl_rxon_context*,struct iwl_link_quality_cmd*,int ,int) ;
 struct iwl_link_quality_cmd* iwl_sta_alloc_lq (struct iwl_priv*,struct iwl_rxon_context*,size_t) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

int iwlagn_add_bssid_station(struct iwl_priv *priv,
        struct iwl_rxon_context *ctx,
        const u8 *addr, u8 *sta_id_r)
{
 int ret;
 u8 sta_id;
 struct iwl_link_quality_cmd *link_cmd;

 if (sta_id_r)
  *sta_id_r = IWL_INVALID_STATION;

 ret = iwl_add_station_common(priv, ctx, addr, 0, ((void*)0), &sta_id);
 if (ret) {
  IWL_ERR(priv, "Unable to add station %pM\n", addr);
  return ret;
 }

 if (sta_id_r)
  *sta_id_r = sta_id;

 spin_lock_bh(&priv->sta_lock);
 priv->stations[sta_id].used |= IWL_STA_LOCAL;
 spin_unlock_bh(&priv->sta_lock);


 link_cmd = iwl_sta_alloc_lq(priv, ctx, sta_id);
 if (!link_cmd) {
  IWL_ERR(priv,
   "Unable to initialize rate scaling for station %pM.\n",
   addr);
  return -ENOMEM;
 }

 ret = iwl_send_lq_cmd(priv, ctx, link_cmd, 0, 1);
 if (ret)
  IWL_ERR(priv, "Link quality command failed (%d)\n", ret);

 spin_lock_bh(&priv->sta_lock);
 priv->stations[sta_id].lq = link_cmd;
 spin_unlock_bh(&priv->sta_lock);

 return 0;
}
