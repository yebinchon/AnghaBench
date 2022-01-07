
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct wmi_p2p_macaddr {int mac_addr; } ;
struct wmi_p2p_info_event {scalar_t__ data; int len; int info_req_flags; } ;
struct wmi_p2p_hmodel {scalar_t__ p2p_model; } ;
struct wmi_p2p_capabilities {int go_power_save; } ;


 int ATH6KL_DBG_WMI ;
 int EINVAL ;
 int P2P_FLAG_CAPABILITIES_REQ ;
 int P2P_FLAG_HMODEL_REQ ;
 int P2P_FLAG_MACADDR_REQ ;
 int ath6kl_dbg (int ,char*,int,...) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static int ath6kl_wmi_p2p_info_event_rx(u8 *datap, int len)
{
 struct wmi_p2p_info_event *ev;
 u32 flags;
 u16 dlen;

 if (len < sizeof(*ev))
  return -EINVAL;

 ev = (struct wmi_p2p_info_event *) datap;
 flags = le32_to_cpu(ev->info_req_flags);
 dlen = le16_to_cpu(ev->len);
 ath6kl_dbg(ATH6KL_DBG_WMI, "p2p_info: flags=%x len=%d\n", flags, dlen);

 if (flags & P2P_FLAG_CAPABILITIES_REQ) {
  struct wmi_p2p_capabilities *cap;
  if (dlen < sizeof(*cap))
   return -EINVAL;
  cap = (struct wmi_p2p_capabilities *) ev->data;
  ath6kl_dbg(ATH6KL_DBG_WMI, "p2p_info: GO Power Save = %d\n",
      cap->go_power_save);
 }

 if (flags & P2P_FLAG_MACADDR_REQ) {
  struct wmi_p2p_macaddr *mac;
  if (dlen < sizeof(*mac))
   return -EINVAL;
  mac = (struct wmi_p2p_macaddr *) ev->data;
  ath6kl_dbg(ATH6KL_DBG_WMI, "p2p_info: MAC Address = %pM\n",
      mac->mac_addr);
 }

 if (flags & P2P_FLAG_HMODEL_REQ) {
  struct wmi_p2p_hmodel *mod;
  if (dlen < sizeof(*mod))
   return -EINVAL;
  mod = (struct wmi_p2p_hmodel *) ev->data;
  ath6kl_dbg(ATH6KL_DBG_WMI, "p2p_info: P2P Model = %d (%s)\n",
      mod->p2p_model,
      mod->p2p_model ? "host" : "firmware");
 }
 return 0;
}
