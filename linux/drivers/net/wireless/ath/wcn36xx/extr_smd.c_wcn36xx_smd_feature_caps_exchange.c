
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_feat_caps_msg {int * feat_caps; TYPE_1__ header; } ;
struct wcn36xx {int hal_rsp_len; int hal_mutex; int * fw_feat_caps; scalar_t__ hal_buf; } ;


 int INIT_HAL_MSG (struct wcn36xx_hal_feat_caps_msg,int ) ;
 int PREPARE_HAL_BUF (scalar_t__,struct wcn36xx_hal_feat_caps_msg) ;
 int STA_POWERSAVE ;
 int WCN36XX_HAL_CAPS_SIZE ;
 int WCN36XX_HAL_FEATURE_CAPS_EXCHANGE_REQ ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int set_feat_caps (int *,int ) ;
 int wcn36xx_err (char*) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;

int wcn36xx_smd_feature_caps_exchange(struct wcn36xx *wcn)
{
 struct wcn36xx_hal_feat_caps_msg msg_body, *rsp;
 int ret, i;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_FEATURE_CAPS_EXCHANGE_REQ);

 set_feat_caps(msg_body.feat_caps, STA_POWERSAVE);

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_feature_caps_exchange failed\n");
  goto out;
 }
 if (wcn->hal_rsp_len != sizeof(*rsp)) {
  wcn36xx_err("Invalid hal_feature_caps_exchange response");
  goto out;
 }

 rsp = (struct wcn36xx_hal_feat_caps_msg *) wcn->hal_buf;

 for (i = 0; i < WCN36XX_HAL_CAPS_SIZE; i++)
  wcn->fw_feat_caps[i] = rsp->feat_caps[i];
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
