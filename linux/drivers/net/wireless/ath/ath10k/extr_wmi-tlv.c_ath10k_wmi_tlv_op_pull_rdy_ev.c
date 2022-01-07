
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int addr; } ;
struct TYPE_3__ {int abi_ver1; int abi_ver0; } ;
struct wmi_tlv_rdy_ev {TYPE_2__ mac_addr; int status; TYPE_1__ abi; } ;
struct wmi_rdy_ev_arg {int mac_addr; int status; int abi_version; int sw_version; } ;
struct sk_buff {int len; int data; } ;
struct ath10k {int dummy; } ;


 int EPROTO ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (void const**) ;
 int PTR_ERR (void const**) ;
 size_t WMI_TLV_TAG_STRUCT_READY_EVENT ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 void** ath10k_wmi_tlv_parse_alloc (struct ath10k*,int ,int ,int ) ;
 int kfree (void const**) ;

__attribute__((used)) static int ath10k_wmi_tlv_op_pull_rdy_ev(struct ath10k *ar,
      struct sk_buff *skb,
      struct wmi_rdy_ev_arg *arg)
{
 const void **tb;
 const struct wmi_tlv_rdy_ev *ev;
 int ret;

 tb = ath10k_wmi_tlv_parse_alloc(ar, skb->data, skb->len, GFP_ATOMIC);
 if (IS_ERR(tb)) {
  ret = PTR_ERR(tb);
  ath10k_warn(ar, "failed to parse tlv: %d\n", ret);
  return ret;
 }

 ev = tb[WMI_TLV_TAG_STRUCT_READY_EVENT];
 if (!ev) {
  kfree(tb);
  return -EPROTO;
 }

 arg->sw_version = ev->abi.abi_ver0;
 arg->abi_version = ev->abi.abi_ver1;
 arg->status = ev->status;
 arg->mac_addr = ev->mac_addr.addr;

 kfree(tb);
 return 0;
}
