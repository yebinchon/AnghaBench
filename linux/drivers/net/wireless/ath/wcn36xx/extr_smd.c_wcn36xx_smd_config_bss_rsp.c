
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_vif {int self_ucast_dpu_sign; int bss_index; } ;
struct wcn36xx_sta {int bss_dpu_desc_index; int bss_sta_index; } ;
struct wcn36xx_hal_config_bss_rsp_params {scalar_t__ status; int ucast_dpu_signature; int dpu_desc_index; int bss_sta_index; int bss_index; int tx_mgmt_power; int mac; int bss_bcast_sta_idx; int bss_self_sta_index; } ;
struct wcn36xx_hal_config_bss_rsp_msg {struct wcn36xx_hal_config_bss_rsp_params bss_rsp_params; } ;
struct wcn36xx {int dummy; } ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_sta {int dummy; } ;


 int EINVAL ;
 int EIO ;
 int WCN36XX_DBG_HAL ;
 scalar_t__ WCN36XX_FW_MSG_RESULT_SUCCESS ;
 int wcn36xx_dbg (int ,char*,scalar_t__,int ,int ,int ,int ,int ,int ,int ,int ) ;
 struct wcn36xx_sta* wcn36xx_sta_to_priv (struct ieee80211_sta*) ;
 struct wcn36xx_vif* wcn36xx_vif_to_priv (struct ieee80211_vif*) ;
 int wcn36xx_warn (char*,scalar_t__) ;

__attribute__((used)) static int wcn36xx_smd_config_bss_rsp(struct wcn36xx *wcn,
          struct ieee80211_vif *vif,
          struct ieee80211_sta *sta,
          void *buf,
          size_t len)
{
 struct wcn36xx_hal_config_bss_rsp_msg *rsp;
 struct wcn36xx_hal_config_bss_rsp_params *params;
 struct wcn36xx_vif *vif_priv = wcn36xx_vif_to_priv(vif);

 if (len < sizeof(*rsp))
  return -EINVAL;

 rsp = (struct wcn36xx_hal_config_bss_rsp_msg *)buf;
 params = &rsp->bss_rsp_params;

 if (params->status != WCN36XX_FW_MSG_RESULT_SUCCESS) {
  wcn36xx_warn("hal config bss response failure: %d\n",
        params->status);
  return -EIO;
 }

 wcn36xx_dbg(WCN36XX_DBG_HAL,
      "hal config bss rsp status %d bss_idx %d dpu_desc_index %d"
      " sta_idx %d self_idx %d bcast_idx %d mac %pM"
      " power %d ucast_dpu_signature %d\n",
      params->status, params->bss_index, params->dpu_desc_index,
      params->bss_sta_index, params->bss_self_sta_index,
      params->bss_bcast_sta_idx, params->mac,
      params->tx_mgmt_power, params->ucast_dpu_signature);

 vif_priv->bss_index = params->bss_index;

 if (sta) {
  struct wcn36xx_sta *sta_priv = wcn36xx_sta_to_priv(sta);
  sta_priv->bss_sta_index = params->bss_sta_index;
  sta_priv->bss_dpu_desc_index = params->dpu_desc_index;
 }

 vif_priv->self_ucast_dpu_sign = params->ucast_dpu_signature;

 return 0;
}
