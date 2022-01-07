
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wcn36xx_vif {int dtim_period; int bss_index; } ;
struct TYPE_4__ {int len; } ;
struct wcn36xx_hal_enter_bmps_req_msg {TYPE_2__ header; int dtim_period; int tbtt; int bss_index; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
struct TYPE_3__ {int sync_tsf; } ;
struct ieee80211_vif {TYPE_1__ bss_conf; } ;


 int INIT_HAL_MSG (struct wcn36xx_hal_enter_bmps_req_msg,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_enter_bmps_req_msg) ;
 int WCN36XX_HAL_ENTER_BMPS_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;
 struct wcn36xx_vif* wcn36xx_vif_to_priv (struct ieee80211_vif*) ;

int wcn36xx_smd_enter_bmps(struct wcn36xx *wcn, struct ieee80211_vif *vif)
{
 struct wcn36xx_hal_enter_bmps_req_msg msg_body;
 struct wcn36xx_vif *vif_priv = wcn36xx_vif_to_priv(vif);
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_ENTER_BMPS_REQ);

 msg_body.bss_index = vif_priv->bss_index;
 msg_body.tbtt = vif->bss_conf.sync_tsf;
 msg_body.dtim_period = vif_priv->dtim_period;

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_enter_bmps failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_enter_bmps response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
