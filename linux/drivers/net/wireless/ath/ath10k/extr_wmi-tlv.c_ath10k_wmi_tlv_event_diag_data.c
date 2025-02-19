
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_tlv_diag_item {int len; int payload; int code; int timestamp; int type; } ;
struct wmi_tlv_diag_data_ev {int num_items; } ;
struct sk_buff {int len; int data; } ;
struct ath10k {int dummy; } ;


 int EPROTO ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (void const**) ;
 int PTR_ERR (void const**) ;
 size_t WMI_TLV_TAG_ARRAY_BYTE ;
 size_t WMI_TLV_TAG_STRUCT_DIAG_DATA_CONTAINER_EVENT ;
 int __le16_to_cpu (int ) ;
 int __le32_to_cpu (int ) ;
 int ath10k_warn (struct ath10k*,char*,...) ;
 int ath10k_wmi_tlv_len (void const*) ;
 void** ath10k_wmi_tlv_parse_alloc (struct ath10k*,int ,int ,int ) ;
 int kfree (void const**) ;
 scalar_t__ roundup (int,int) ;
 int trace_ath10k_wmi_diag_container (struct ath10k*,int ,int,int,int,int ) ;

__attribute__((used)) static int ath10k_wmi_tlv_event_diag_data(struct ath10k *ar,
       struct sk_buff *skb)
{
 const void **tb;
 const struct wmi_tlv_diag_data_ev *ev;
 const struct wmi_tlv_diag_item *item;
 const void *data;
 int ret, num_items, len;

 tb = ath10k_wmi_tlv_parse_alloc(ar, skb->data, skb->len, GFP_ATOMIC);
 if (IS_ERR(tb)) {
  ret = PTR_ERR(tb);
  ath10k_warn(ar, "failed to parse tlv: %d\n", ret);
  return ret;
 }

 ev = tb[WMI_TLV_TAG_STRUCT_DIAG_DATA_CONTAINER_EVENT];
 data = tb[WMI_TLV_TAG_ARRAY_BYTE];
 if (!ev || !data) {
  kfree(tb);
  return -EPROTO;
 }

 num_items = __le32_to_cpu(ev->num_items);
 len = ath10k_wmi_tlv_len(data);

 while (num_items--) {
  if (len == 0)
   break;
  if (len < sizeof(*item)) {
   ath10k_warn(ar, "failed to parse diag data: can't fit item header\n");
   break;
  }

  item = data;

  if (len < sizeof(*item) + __le16_to_cpu(item->len)) {
   ath10k_warn(ar, "failed to parse diag data: item is too long\n");
   break;
  }

  trace_ath10k_wmi_diag_container(ar,
      item->type,
      __le32_to_cpu(item->timestamp),
      __le32_to_cpu(item->code),
      __le16_to_cpu(item->len),
      item->payload);

  len -= sizeof(*item);
  len -= roundup(__le16_to_cpu(item->len), 4);

  data += sizeof(*item);
  data += roundup(__le16_to_cpu(item->len), 4);
 }

 if (num_items != -1 || len != 0)
  ath10k_warn(ar, "failed to parse diag data event: num_items %d len %d\n",
       num_items, len);

 kfree(tb);
 return 0;
}
