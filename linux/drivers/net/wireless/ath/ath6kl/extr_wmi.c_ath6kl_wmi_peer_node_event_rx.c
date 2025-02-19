
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wmi_peer_node_event {scalar_t__ event_code; int peer_mac_addr; } ;
struct wmi {int dummy; } ;


 int ATH6KL_DBG_WMI ;
 int EINVAL ;
 scalar_t__ PEER_NODE_JOIN_EVENT ;
 scalar_t__ PEER_NODE_LEAVE_EVENT ;
 int ath6kl_dbg (int ,char*,int ) ;

__attribute__((used)) static int ath6kl_wmi_peer_node_event_rx(struct wmi *wmi, u8 *datap, int len)
{
 struct wmi_peer_node_event *ev;

 if (len < sizeof(struct wmi_peer_node_event))
  return -EINVAL;

 ev = (struct wmi_peer_node_event *) datap;

 if (ev->event_code == PEER_NODE_JOIN_EVENT)
  ath6kl_dbg(ATH6KL_DBG_WMI, "joined node with mac addr: %pM\n",
      ev->peer_mac_addr);
 else if (ev->event_code == PEER_NODE_LEAVE_EVENT)
  ath6kl_dbg(ATH6KL_DBG_WMI, "left node with mac addr: %pM\n",
      ev->peer_mac_addr);

 return 0;
}
