
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_wow_ev_arg {void* data_len; void* wake_reason; void* flag; void* vdev_id; } ;
struct wmi_tlv_wow_event_info {int data_len; int wake_reason; int flag; int vdev_id; } ;
struct sk_buff {int len; int data; } ;
struct ath10k {int dummy; } ;


 int EPROTO ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (void const**) ;
 int PTR_ERR (void const**) ;
 size_t WMI_TLV_TAG_STRUCT_WOW_EVENT_INFO ;
 void* __le32_to_cpu (int ) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 void** ath10k_wmi_tlv_parse_alloc (struct ath10k*,int ,int ,int ) ;
 int kfree (void const**) ;

__attribute__((used)) static int
ath10k_wmi_tlv_op_pull_wow_ev(struct ath10k *ar, struct sk_buff *skb,
         struct wmi_wow_ev_arg *arg)
{
 const void **tb;
 const struct wmi_tlv_wow_event_info *ev;
 int ret;

 tb = ath10k_wmi_tlv_parse_alloc(ar, skb->data, skb->len, GFP_ATOMIC);
 if (IS_ERR(tb)) {
  ret = PTR_ERR(tb);
  ath10k_warn(ar, "failed to parse tlv: %d\n", ret);
  return ret;
 }

 ev = tb[WMI_TLV_TAG_STRUCT_WOW_EVENT_INFO];
 if (!ev) {
  kfree(tb);
  return -EPROTO;
 }

 arg->vdev_id = __le32_to_cpu(ev->vdev_id);
 arg->flag = __le32_to_cpu(ev->flag);
 arg->wake_reason = __le32_to_cpu(ev->wake_reason);
 arg->data_len = __le32_to_cpu(ev->data_len);

 kfree(tb);
 return 0;
}
