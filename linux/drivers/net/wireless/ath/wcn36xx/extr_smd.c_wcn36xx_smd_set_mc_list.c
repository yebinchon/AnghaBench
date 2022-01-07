
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct wcn36xx_vif {int bss_index; } ;
struct TYPE_4__ {int len; } ;
struct TYPE_3__ {int bss_index; scalar_t__ mc_addr_count; } ;
struct wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg {TYPE_2__ header; TYPE_1__ mc_addr_list; } ;
struct wcn36xx_hal_rcv_flt_mc_addr_list_type {int dummy; } ;
struct wcn36xx {int hal_mutex; int hal_rsp_len; scalar_t__ hal_buf; } ;
struct ieee80211_vif {int dummy; } ;


 int WCN36XX_HAL_8023_MULTICAST_LIST_REQ ;
 int init_hal_msg (TYPE_2__*,int ,int) ;
 int memcpy (TYPE_1__*,struct wcn36xx_hal_rcv_flt_mc_addr_list_type*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wcn36xx_err (char*,...) ;
 int wcn36xx_smd_rsp_status_check (scalar_t__,int ) ;
 int wcn36xx_smd_send_and_wait (struct wcn36xx*,int ) ;
 struct wcn36xx_vif* wcn36xx_vif_to_priv (struct ieee80211_vif*) ;

int wcn36xx_smd_set_mc_list(struct wcn36xx *wcn,
       struct ieee80211_vif *vif,
       struct wcn36xx_hal_rcv_flt_mc_addr_list_type *fp)
{
 struct wcn36xx_vif *vif_priv = wcn36xx_vif_to_priv(vif);
 struct wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg *msg_body = ((void*)0);
 int ret;

 mutex_lock(&wcn->hal_mutex);

 msg_body = (struct wcn36xx_hal_rcv_flt_pkt_set_mc_list_req_msg *)
     wcn->hal_buf;
 init_hal_msg(&msg_body->header, WCN36XX_HAL_8023_MULTICAST_LIST_REQ,
       sizeof(msg_body->mc_addr_list));


 if (fp)
  memcpy(&msg_body->mc_addr_list, fp,
         sizeof(msg_body->mc_addr_list));
 else
  msg_body->mc_addr_list.mc_addr_count = 0;

 msg_body->mc_addr_list.bss_index = vif_priv->bss_index;

 ret = wcn36xx_smd_send_and_wait(wcn, msg_body->header.len);
 if (ret) {
  wcn36xx_err("Sending HAL_8023_MULTICAST_LIST failed\n");
  goto out;
 }
 ret = wcn36xx_smd_rsp_status_check(wcn->hal_buf, wcn->hal_rsp_len);
 if (ret) {
  wcn36xx_err("HAL_8023_MULTICAST_LIST rsp failed err=%d\n", ret);
  goto out;
 }
out:
 mutex_unlock(&wcn->hal_mutex);
 return ret;
}
