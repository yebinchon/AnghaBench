
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct usbnet {int net; } ;
struct rndis_wlan_private {scalar_t__ infra_mode; int connected; int bssid; int work; int workqueue; int work_pending; } ;
struct ndis_80211_assoc_info {int offset_resp_ies; int resp_ie_length; int offset_req_ies; int req_ie_length; } ;
struct cfg80211_roam_info {unsigned int req_ie_len; unsigned int resp_ie_len; int * resp_ie; int * req_ie; int * bssid; int channel; } ;
typedef int bssid ;


 unsigned int CONTROL_BUFFER_SIZE ;
 int ETH_ALEN ;
 int GFP_KERNEL ;
 scalar_t__ NDIS_80211_INFRA_ADHOC ;
 scalar_t__ NDIS_80211_INFRA_INFRA ;
 scalar_t__ WARN_ON (int) ;
 int WORK_LINK_UP ;
 int cfg80211_connect_result (int ,int *,int *,unsigned int,int *,unsigned int,int ,int ) ;
 int cfg80211_ibss_joined (int ,int *,int ,int ) ;
 int cfg80211_roamed (int ,struct cfg80211_roam_info*,int ) ;
 int get_association_info (struct usbnet*,struct ndis_80211_assoc_info*,unsigned int) ;
 int get_bssid (struct usbnet*,int *) ;
 int get_current_channel (struct usbnet*,int *) ;
 struct rndis_wlan_private* get_rndis_wlan_priv (struct usbnet*) ;
 int is_zero_ether_addr (int *) ;
 int kfree (struct ndis_80211_assoc_info*) ;
 struct ndis_80211_assoc_info* kzalloc (unsigned int,int ) ;
 unsigned int le32_to_cpu (int ) ;
 int memcpy (int ,int *,int) ;
 int memset (int *,int ,int) ;
 int netdev_dbg (int ,char*,int *,char*) ;
 int netif_carrier_on (int ) ;
 int queue_work (int ,int *) ;
 int rndis_check_bssid_list (struct usbnet*,int *,int*) ;
 int rndis_wlan_craft_connected_bss (struct usbnet*,int *,struct ndis_80211_assoc_info*) ;
 int set_bit (int ,int *) ;
 int usbnet_resume_rx (struct usbnet*) ;

__attribute__((used)) static void rndis_wlan_do_link_up_work(struct usbnet *usbdev)
{
 struct rndis_wlan_private *priv = get_rndis_wlan_priv(usbdev);
 struct ndis_80211_assoc_info *info = ((void*)0);
 u8 bssid[ETH_ALEN];
 unsigned int resp_ie_len, req_ie_len;
 unsigned int offset;
 u8 *req_ie, *resp_ie;
 int ret;
 bool roamed = 0;
 bool match_bss;

 if (priv->infra_mode == NDIS_80211_INFRA_INFRA && priv->connected) {


  roamed = 1;
 }

 req_ie_len = 0;
 resp_ie_len = 0;
 req_ie = ((void*)0);
 resp_ie = ((void*)0);

 if (priv->infra_mode == NDIS_80211_INFRA_INFRA) {
  info = kzalloc(CONTROL_BUFFER_SIZE, GFP_KERNEL);
  if (!info) {

   set_bit(WORK_LINK_UP, &priv->work_pending);
   queue_work(priv->workqueue, &priv->work);
   return;
  }


  ret = get_association_info(usbdev, info, CONTROL_BUFFER_SIZE);
  if (!ret) {
   req_ie_len = le32_to_cpu(info->req_ie_length);
   if (req_ie_len > CONTROL_BUFFER_SIZE)
    req_ie_len = CONTROL_BUFFER_SIZE;
   if (req_ie_len != 0) {
    offset = le32_to_cpu(info->offset_req_ies);

    if (offset > CONTROL_BUFFER_SIZE)
     offset = CONTROL_BUFFER_SIZE;

    req_ie = (u8 *)info + offset;

    if (offset + req_ie_len > CONTROL_BUFFER_SIZE)
     req_ie_len =
      CONTROL_BUFFER_SIZE - offset;
   }

   resp_ie_len = le32_to_cpu(info->resp_ie_length);
   if (resp_ie_len > CONTROL_BUFFER_SIZE)
    resp_ie_len = CONTROL_BUFFER_SIZE;
   if (resp_ie_len != 0) {
    offset = le32_to_cpu(info->offset_resp_ies);

    if (offset > CONTROL_BUFFER_SIZE)
     offset = CONTROL_BUFFER_SIZE;

    resp_ie = (u8 *)info + offset;

    if (offset + resp_ie_len > CONTROL_BUFFER_SIZE)
     resp_ie_len =
      CONTROL_BUFFER_SIZE - offset;
   }
  } else {




   kfree(info);
   info = ((void*)0);
  }
 } else if (WARN_ON(priv->infra_mode != NDIS_80211_INFRA_ADHOC))
  return;

 ret = get_bssid(usbdev, bssid);
 if (ret < 0)
  memset(bssid, 0, sizeof(bssid));

 netdev_dbg(usbdev->net, "link up work: [%pM]%s\n",
     bssid, roamed ? " roamed" : "");
 match_bss = 0;
 rndis_check_bssid_list(usbdev, bssid, &match_bss);

 if (!is_zero_ether_addr(bssid) && !match_bss) {



  rndis_wlan_craft_connected_bss(usbdev, bssid, info);
 }

 if (priv->infra_mode == NDIS_80211_INFRA_INFRA) {
  if (!roamed) {
   cfg80211_connect_result(usbdev->net, bssid, req_ie,
      req_ie_len, resp_ie,
      resp_ie_len, 0, GFP_KERNEL);
  } else {
   struct cfg80211_roam_info roam_info = {
    .channel = get_current_channel(usbdev, ((void*)0)),
    .bssid = bssid,
    .req_ie = req_ie,
    .req_ie_len = req_ie_len,
    .resp_ie = resp_ie,
    .resp_ie_len = resp_ie_len,
   };

   cfg80211_roamed(usbdev->net, &roam_info, GFP_KERNEL);
  }
 } else if (priv->infra_mode == NDIS_80211_INFRA_ADHOC)
  cfg80211_ibss_joined(usbdev->net, bssid,
         get_current_channel(usbdev, ((void*)0)),
         GFP_KERNEL);

 kfree(info);

 priv->connected = 1;
 memcpy(priv->bssid, bssid, ETH_ALEN);

 usbnet_resume_rx(usbdev);
 netif_carrier_on(usbdev->net);
}
