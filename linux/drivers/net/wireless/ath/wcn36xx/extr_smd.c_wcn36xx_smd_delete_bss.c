
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wcn36xx_vif {scalar_t__ bss_index; } ;
struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_delete_bss_req_msg {scalar_t__ bss_index; TYPE_1__ header; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
struct ieee80211_vif {int dummy; } ;


 int INIT_HAL_MSG (struct wcn36xx_hal_delete_bss_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_delete_bss_req_msg) ;
 int WCN36XX_DBG_HAL ;
 scalar_t__ WCN36XX_HAL_BSS_INVALID_IDX ;
 int WCN36XX_HAL_DELETE_BSS_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,scalar_t__) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;
 struct wcn36xx_vif* wcn36xx_vif_to_priv (struct ieee80211_vif*) ;

int wcn36xx_smd_delete_bss(struct wcn36xx *wcn, struct ieee80211_vif *vif)
{
 struct wcn36xx_hal_delete_bss_req_msg msg_body;
 struct wcn36xx_vif *vif_priv = wcn36xx_vif_to_priv(vif);
 int ret = 0;

 mutex_lock(&wcn->hal_mutex);

 if (vif_priv->bss_index == WCN36XX_HAL_BSS_INVALID_IDX)
  goto out;

 INIT_HAL_MSG(msg_body, WCN36XX_HAL_DELETE_BSS_REQ);

 msg_body.bss_index = vif_priv->bss_index;

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 wcn36xx_dbg(WCN36XX_DBG_HAL, "hal delete bss %d\n", msg_body.bss_index);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_delete_bss failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_delete_bss response failed err=%d\n", ret);
  goto out;
 }

 vif_priv->bss_index = WCN36XX_HAL_BSS_INVALID_IDX;
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
