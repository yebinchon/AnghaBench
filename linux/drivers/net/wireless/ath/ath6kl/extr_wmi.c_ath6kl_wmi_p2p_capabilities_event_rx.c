
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct wmi_p2p_capabilities_event {int len; } ;


 int ATH6KL_DBG_WMI ;
 int EINVAL ;
 int ath6kl_dbg (int ,char*,int ) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int ath6kl_wmi_p2p_capabilities_event_rx(u8 *datap, int len)
{
 struct wmi_p2p_capabilities_event *ev;
 u16 dlen;

 if (len < sizeof(*ev))
  return -EINVAL;

 ev = (struct wmi_p2p_capabilities_event *) datap;
 dlen = le16_to_cpu(ev->len);
 ath6kl_dbg(ATH6KL_DBG_WMI, "p2p_capab: len=%u\n", dlen);

 return 0;
}
