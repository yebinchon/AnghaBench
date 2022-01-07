
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wcn36xx_hal_switch_channel_rsp_msg {int status; int channel_number; } ;


 int WCN36XX_DBG_HAL ;
 int wcn36xx_dbg (int ,char*,int ,int ) ;
 int wcn36xx_smd_rsp_status_check (void*,size_t) ;

__attribute__((used)) static int wcn36xx_smd_switch_channel_rsp(void *buf, size_t len)
{
 struct wcn36xx_hal_switch_channel_rsp_msg *rsp;
 int ret;

 ret = wcn36xx_smd_rsp_status_check(buf, len);
 if (ret)
  return ret;
 rsp = (struct wcn36xx_hal_switch_channel_rsp_msg *)buf;
 wcn36xx_dbg(WCN36XX_DBG_HAL, "channel switched to: %d, status: %d\n",
      rsp->channel_number, rsp->status);
 return ret;
}
