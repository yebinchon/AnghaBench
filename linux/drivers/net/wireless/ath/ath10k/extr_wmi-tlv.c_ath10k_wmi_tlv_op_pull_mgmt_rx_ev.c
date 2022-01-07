
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct wmi_tlv_mgmt_rx_ev {int rate; int phy_mode; int snr; int status; int buf_len; int channel; } ;
struct wmi_mgmt_rx_ev_arg {int buf_len; int rate; int phy_mode; int snr; int status; int channel; } ;
struct sk_buff {int len; int const* data; } ;
struct ath10k {int dummy; } ;


 int EPROTO ;
 int GFP_ATOMIC ;
 scalar_t__ IS_ERR (void const**) ;
 int PTR_ERR (void const**) ;
 size_t WMI_TLV_TAG_ARRAY_BYTE ;
 size_t WMI_TLV_TAG_STRUCT_MGMT_RX_HDR ;
 int __le32_to_cpu (int ) ;
 int ath10k_warn (struct ath10k*,char*,int) ;
 void** ath10k_wmi_tlv_parse_alloc (struct ath10k*,int const*,int,int ) ;
 int kfree (void const**) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_trim (struct sk_buff*,int ) ;

__attribute__((used)) static int ath10k_wmi_tlv_op_pull_mgmt_rx_ev(struct ath10k *ar,
          struct sk_buff *skb,
          struct wmi_mgmt_rx_ev_arg *arg)
{
 const void **tb;
 const struct wmi_tlv_mgmt_rx_ev *ev;
 const u8 *frame;
 u32 msdu_len;
 int ret;

 tb = ath10k_wmi_tlv_parse_alloc(ar, skb->data, skb->len, GFP_ATOMIC);
 if (IS_ERR(tb)) {
  ret = PTR_ERR(tb);
  ath10k_warn(ar, "failed to parse tlv: %d\n", ret);
  return ret;
 }

 ev = tb[WMI_TLV_TAG_STRUCT_MGMT_RX_HDR];
 frame = tb[WMI_TLV_TAG_ARRAY_BYTE];

 if (!ev || !frame) {
  kfree(tb);
  return -EPROTO;
 }

 arg->channel = ev->channel;
 arg->buf_len = ev->buf_len;
 arg->status = ev->status;
 arg->snr = ev->snr;
 arg->phy_mode = ev->phy_mode;
 arg->rate = ev->rate;

 msdu_len = __le32_to_cpu(arg->buf_len);

 if (skb->len < (frame - skb->data) + msdu_len) {
  kfree(tb);
  return -EPROTO;
 }


 skb_trim(skb, 0);
 skb_put(skb, frame - skb->data);
 skb_pull(skb, frame - skb->data);
 skb_put(skb, msdu_len);

 kfree(tb);
 return 0;
}
