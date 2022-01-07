
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int len; } ;
struct wcn36xx_hal_update_scan_params_req_ex {int dot11d_enabled; int dot11d_resolved; size_t channel_count; int active_min_ch_time; int active_max_ch_time; int passive_min_ch_time; int passive_max_ch_time; TYPE_1__ header; int state; int channels; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; int hal_buf; } ;


 int INIT_HAL_MSG (struct wcn36xx_hal_update_scan_params_req_ex,int ) ;
 int PHY_SINGLE_CHANNEL_CENTERED ;
 int PREPARE_HAL_BUF (int ,struct wcn36xx_hal_update_scan_params_req_ex) ;
 int WCN36XX_DBG_HAL ;
 int WCN36XX_HAL_UPDATE_SCAN_PARAM_REQ ;
 int memcpy (int ,int *,size_t) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_dbg (int ,char*,size_t) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;
 int wcn36xx_smd_update_scan_params_rsp (int ,int ) ;

int wcn36xx_smd_update_scan_params(struct wcn36xx *wcn,
       u8 *channels, size_t channel_count)
{
 struct wcn36xx_hal_update_scan_params_req_ex msg_body;
 int ret;

 mutex_lock(&wcn->hal_mutex);
 INIT_HAL_MSG(msg_body, WCN36XX_HAL_UPDATE_SCAN_PARAM_REQ);

 msg_body.dot11d_enabled = 0;
 msg_body.dot11d_resolved = 1;

 msg_body.channel_count = channel_count;
 memcpy(msg_body.channels, channels, channel_count);
 msg_body.active_min_ch_time = 60;
 msg_body.active_max_ch_time = 120;
 msg_body.passive_min_ch_time = 60;
 msg_body.passive_max_ch_time = 110;
 msg_body.state = PHY_SINGLE_CHANNEL_CENTERED;

 PREPARE_HAL_BUF(wcn->hal_buf, msg_body);

 wcn36xx_dbg(WCN36XX_DBG_HAL,
      "hal update scan params channel_count %d\n",
      msg_body.channel_count);

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body.header.len);
 if (ret) {
  wcn36xx_err("Sending hal_update_scan_params failed\n");
  goto out;
 }
 ret = wcn36xx_smd_update_scan_params_rsp(wcn->hal_buf,
       wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("hal_update_scan_params response failed err=%d\n",
       ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
