
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_add_sta_self_req {TYPE_1__ header; int status; int self_addr; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;
struct ieee80211_vif {int addr; } ;


 int ETH_ALEN ;
 int INIT_HAL_MSG (struct wcn36xx_hal_add_sta_self_req,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_add_sta_self_req) ;
 int WCN36XX_DBG_HAL ;
 int WCN36XX_HAL_ADD_STA_SELF_REQ ;
 int memcpy (int *,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,int ,int ) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_add_sta_self_rsp (struct wcn36xx*,struct ieee80211_vif*,int ,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

int wcn36xx_smd_add_sta_self(struct wcn36xx *wcn, struct ieee80211_vif *vif)
{
 struct wcn36xx_hal_add_sta_self_req msg_body;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_ADD_STA_SELF_REQ);

 memcpy(&msg_body.self_addr, vif->addr, ETH_ALEN);

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 wcn36xx_dbg(WCN36XX_DBG_HAL,
      "hal add sta self self_addr %pM status %d\n",
      msg_body.self_addr, msg_body.status);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_add_sta_self failed\n");
  goto out;
 }
 ret = wcn36xx_smd_add_sta_self_rsp(wcn,
        vif,
        wcn->hal_buf,
        wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_add_sta_self response failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
