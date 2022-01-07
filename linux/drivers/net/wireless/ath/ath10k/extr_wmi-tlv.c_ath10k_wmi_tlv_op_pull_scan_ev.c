
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_scan_event {int vdev_id; int scan_id; int scan_req_id; int channel_freq; int reason; int event_type; } ;
struct wmi_scan_ev_arg {int vdev_id; int scan_id; int scan_req_id; int channel_freq; int reason; int event_type; } ;
struct sk_buff {int len; int data; } ;
struct ath10k {int dummy; } ;


 int EPROTO ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (void const**) ;
 int PTR_ERR (void const**) ;
 size_t WMI_TLV_TAG_STRUCT_SCAN_EVENT ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 void** ath10k_wmi_tlv_parse_alloc (struct ath10k*,int ,int ,int ) ;
 int kfree (void const**) ;

__attribute__((used)) static int ath10k_wmi_tlv_op_pull_scan_ev(struct ath10k *ar,
       struct sk_buff *skb,
       struct wmi_scan_ev_arg *arg)
{
 const void **tb;
 const struct wmi_scan_event *ev;
 int ret;

 tb = ath10k_wmi_tlv_parse_alloc(ar, skb->data, skb->len, GFP_ATOMIC);
 if (IS_ERR(tb)) {
  ret = PTR_ERR(tb);
  ath10k_warn(ar, "failed to parse tlv: %d\n", ret);
  return ret;
 }

 ev = tb[WMI_TLV_TAG_STRUCT_SCAN_EVENT];
 if (!ev) {
  kfree(tb);
  return -EPROTO;
 }

 arg->event_type = ev->event_type;
 arg->reason = ev->reason;
 arg->channel_freq = ev->channel_freq;
 arg->scan_req_id = ev->scan_req_id;
 arg->scan_id = ev->scan_id;
 arg->vdev_id = ev->vdev_id;

 kfree(tb);
 return 0;
}
