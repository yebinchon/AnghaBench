
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wmi_tlv_mgmt_tx_compl_ev_arg {int ack_rssi; int ppdu_id; int pdev_id; int status; int desc_id; } ;
struct wmi_tlv_mgmt_tx_compl_ev {int ack_rssi; int ppdu_id; int pdev_id; int status; int desc_id; } ;
struct sk_buff {int len; int data; } ;
struct TYPE_2__ {int svc_map; } ;
struct ath10k {TYPE_1__ wmi; } ;


 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (void const**) ;
 int PTR_ERR (void const**) ;
 int WMI_SERVICE_TX_DATA_ACK_RSSI ;
 size_t WMI_TLV_TAG_STRUCT_MGMT_TX_COMPL_EVENT ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 void** ath10k_wmi_tlv_parse_alloc (struct ath10k*,int ,int ,int ) ;
 int kfree (void const**) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static int
ath10k_wmi_tlv_op_pull_mgmt_tx_compl_ev(struct ath10k *ar, struct sk_buff *skb,
     struct wmi_tlv_mgmt_tx_compl_ev_arg *arg)
{
 const void **tb;
 const struct wmi_tlv_mgmt_tx_compl_ev *ev;
 int ret;

 tb = ath10k_wmi_tlv_parse_alloc(ar, skb->data, skb->len, GFP_ATOMIC);
 if (IS_ERR(tb)) {
  ret = PTR_ERR(tb);
  ath10k_warn(ar, "failed to parse tlv: %d\n", ret);
  return ret;
 }

 ev = tb[WMI_TLV_TAG_STRUCT_MGMT_TX_COMPL_EVENT];

 arg->desc_id = ev->desc_id;
 arg->status = ev->status;
 arg->pdev_id = ev->pdev_id;
 arg->ppdu_id = ev->ppdu_id;

 if (test_bit(WMI_SERVICE_TX_DATA_ACK_RSSI, ar->wmi.svc_map))
  arg->ack_rssi = ev->ack_rssi;

 kfree(tb);
 return 0;
}
