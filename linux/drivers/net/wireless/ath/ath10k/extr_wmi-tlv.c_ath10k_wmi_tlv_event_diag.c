
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; int data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int EPROTO ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (void const**) ;
 int PTR_ERR (void const**) ;
 size_t WMI_TLV_TAG_ARRAY_BYTE ;
 int ath10k_dbg (struct ath10k*,int ,char*,int) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 int ath10k_wmi_tlv_len (void const*) ;
 void** ath10k_wmi_tlv_parse_alloc (struct ath10k*,int ,int ,int ) ;
 int kfree (void const**) ;
 int trace_ath10k_wmi_diag (struct ath10k*,void const*,int) ;

__attribute__((used)) static int ath10k_wmi_tlv_event_diag(struct ath10k *ar,
         struct sk_buff *skb)
{
 const void **tb;
 const void *data;
 int ret, len;

 tb = ath10k_wmi_tlv_parse_alloc(ar, skb->data, skb->len, GFP_ATOMIC);
 if (IS_ERR(tb)) {
  ret = PTR_ERR(tb);
  ath10k_warn(ar, "failed to parse tlv: %d\n", ret);
  return ret;
 }

 data = tb[WMI_TLV_TAG_ARRAY_BYTE];
 if (!data) {
  kfree(tb);
  return -EPROTO;
 }
 len = ath10k_wmi_tlv_len(data);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi tlv diag event len %d\n", len);
 trace_ath10k_wmi_diag(ar, data, len);

 kfree(tb);
 return 0;
}
