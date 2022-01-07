
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_vif {int self_dpu_desc_index; int self_sta_index; } ;
struct wcn36xx_hal_add_sta_self_rsp_msg {scalar_t__ status; int dpu_index; int self_sta_index; } ;
struct wcn36xx {int dummy; } ;
struct ieee80211_vif {int dummy; } ;


 int EINVAL ;
 int WCN36XX_DBG_HAL ;
 scalar_t__ WCN36XX_FW_MSG_RESULT_SUCCESS ;
 int wcn36xx_dbg (int ,char*,int,int ,int ) ;
 struct wcn36xx_vif* wcn36xx_vif_to_priv (struct ieee80211_vif*) ;
 int wcn36xx_warn (char*,scalar_t__) ;

__attribute__((used)) static int wcn36xx_smd_add_sta_self_rsp(struct wcn36xx *wcn,
     struct ieee80211_vif *vif,
     void *buf,
     size_t len)
{
 struct wcn36xx_hal_add_sta_self_rsp_msg *rsp;
 struct wcn36xx_vif *vif_priv = wcn36xx_vif_to_priv(vif);

 if (len < sizeof(*rsp))
  return -EINVAL;

 rsp = (struct wcn36xx_hal_add_sta_self_rsp_msg *)buf;

 if (rsp->status != WCN36XX_FW_MSG_RESULT_SUCCESS) {
  wcn36xx_warn("hal add sta self failure: %d\n",
        rsp->status);
  return rsp->status;
 }

 wcn36xx_dbg(WCN36XX_DBG_HAL,
      "hal add sta self status %d self_sta_index %d dpu_index %d\n",
      rsp->status, rsp->self_sta_index, rsp->dpu_index);

 vif_priv->self_sta_index = rsp->self_sta_index;
 vif_priv->self_dpu_desc_index = rsp->dpu_index;

 return 0;
}
