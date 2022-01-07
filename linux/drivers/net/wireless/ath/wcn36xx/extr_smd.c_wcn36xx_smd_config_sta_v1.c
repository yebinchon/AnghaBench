
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_config_sta_params_v1 {int aid; int mac; int type; int bssid; int bssid_index; int sta_index; int action; } ;
struct wcn36xx_hal_config_sta_req_msg_v1 {TYPE_1__ header; struct wcn36xx_hal_config_sta_params_v1 sta_params; } ;
struct wcn36xx_hal_config_sta_req_msg {int sta_params; } ;
struct wcn36xx {int hal_buf; } ;


 int INIT_HAL_MSG (struct wcn36xx_hal_config_sta_req_msg_v1,int ) ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_config_sta_req_msg_v1) ;
 int WCN36XX_DBG_HAL ;
 int WCN36XX_HAL_CONFIG_STA_REQ ;
 int wcn36xx_dbg (int ,char*,int ,int ,int ,int ,int ,int ,int ) ;
 int wcn36xx_smd_convert_sta_to_v1 (struct wcn36xx*,int *,struct wcn36xx_hal_config_sta_params_v1*) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

__attribute__((used)) static int wcn36xx_smd_config_sta_v1(struct wcn36xx *wcn,
       const struct wcn36xx_hal_config_sta_req_msg *orig)
{
 struct wcn36xx_hal_config_sta_req_msg_v1 msg_body;
 struct wcn36xx_hal_config_sta_params_v1 *sta = &msg_body.sta_params;

 INIT_HAL_MSG(msg_body, WCN36XX_HAL_CONFIG_STA_REQ);

 wcn36xx_smd_convert_sta_to_v1(wcn, &orig->sta_params,
          &msg_body.sta_params);

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 wcn36xx_dbg(WCN36XX_DBG_HAL,
      "hal config sta v1 action %d sta_index %d bssid_index %d bssid %pM type %d mac %pM aid %d\n",
      sta->action, sta->sta_index, sta->bssid_index,
      sta->bssid, sta->type, sta->mac, sta->aid);

 return wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
}
