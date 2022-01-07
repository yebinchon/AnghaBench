
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_vdev_start_response_event {int status; int resp_type; int req_id; int vdev_id; } ;
struct wmi_vdev_start_ev_arg {int status; int resp_type; int req_id; int vdev_id; } ;
struct sk_buff {int len; int data; } ;
struct ath10k {int dummy; } ;


 int EPROTO ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (void const**) ;
 int PTR_ERR (void const**) ;
 size_t WMI_TLV_TAG_STRUCT_VDEV_START_RESPONSE_EVENT ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 void** ath10k_wmi_tlv_parse_alloc (struct ath10k*,int ,int ,int ) ;
 int kfree (void const**) ;
 int skb_pull (struct sk_buff*,int) ;

__attribute__((used)) static int
ath10k_wmi_tlv_op_pull_vdev_start_ev(struct ath10k *ar, struct sk_buff *skb,
         struct wmi_vdev_start_ev_arg *arg)
{
 const void **tb;
 const struct wmi_vdev_start_response_event *ev;
 int ret;

 tb = ath10k_wmi_tlv_parse_alloc(ar, skb->data, skb->len, GFP_ATOMIC);
 if (IS_ERR(tb)) {
  ret = PTR_ERR(tb);
  ath10k_warn(ar, "failed to parse tlv: %d\n", ret);
  return ret;
 }

 ev = tb[WMI_TLV_TAG_STRUCT_VDEV_START_RESPONSE_EVENT];
 if (!ev) {
  kfree(tb);
  return -EPROTO;
 }

 skb_pull(skb, sizeof(*ev));
 arg->vdev_id = ev->vdev_id;
 arg->req_id = ev->req_id;
 arg->resp_type = ev->resp_type;
 arg->status = ev->status;

 kfree(tb);
 return 0;
}
