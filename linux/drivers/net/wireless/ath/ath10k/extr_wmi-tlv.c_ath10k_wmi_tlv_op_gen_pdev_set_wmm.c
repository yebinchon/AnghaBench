
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_wmm_params_all_arg {int ac_vo; int ac_vi; int ac_bk; int ac_be; } ;
struct wmi_wmm_params {int dummy; } ;
struct wmi_tlv_pdev_set_wmm_cmd {int dummy; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int WMI_TLV_TAG_STRUCT_PDEV_SET_WMM_PARAMS_CMD ;
 void* __cpu_to_le16 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,size_t) ;
 void* ath10k_wmi_tlv_put_wmm (void*,int *) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_tlv_op_gen_pdev_set_wmm(struct ath10k *ar,
       const struct wmi_wmm_params_all_arg *arg)
{
 struct wmi_tlv_pdev_set_wmm_cmd *cmd;
 struct wmi_wmm_params *wmm;
 struct wmi_tlv *tlv;
 struct sk_buff *skb;
 size_t len;
 void *ptr;

 len = (sizeof(*tlv) + sizeof(*cmd)) +
       (4 * (sizeof(*tlv) + sizeof(*wmm)));
 skb = ath10k_wmi_alloc_skb(ar, len);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 ptr = (void *)skb->data;

 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_PDEV_SET_WMM_PARAMS_CMD);
 tlv->len = __cpu_to_le16(sizeof(*cmd));
 cmd = (void *)tlv->value;



 ptr += sizeof(*tlv);
 ptr += sizeof(*cmd);

 ptr = ath10k_wmi_tlv_put_wmm(ptr, &arg->ac_be);
 ptr = ath10k_wmi_tlv_put_wmm(ptr, &arg->ac_bk);
 ptr = ath10k_wmi_tlv_put_wmm(ptr, &arg->ac_vi);
 ptr = ath10k_wmi_tlv_put_wmm(ptr, &arg->ac_vo);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi tlv pdev set wmm\n");
 return skb;
}
