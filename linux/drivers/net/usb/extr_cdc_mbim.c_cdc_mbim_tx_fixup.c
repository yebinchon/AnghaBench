
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct usbnet {int net; int data; } ;
struct sk_buff {scalar_t__ len; } ;
struct cdc_ncm_ctx {int mtx; } ;
struct cdc_mbim_state {int flags; struct cdc_ncm_ctx* ctx; } ;
typedef int gfp_t ;
typedef int __le32 ;
struct TYPE_4__ {int h_proto; } ;
struct TYPE_3__ {int h_vlan_encapsulated_proto; } ;


 scalar_t__ ETH_HLEN ;
 int FLAG_IPS0_VLAN ;
 int MBIM_IPS0_VID ;
 int USB_CDC_MBIM_NDP16_DSS_SIGN ;
 int USB_CDC_MBIM_NDP16_IPS_SIGN ;
 scalar_t__ VLAN_ETH_HLEN ;
 scalar_t__ __vlan_get_tag (struct sk_buff*,int*) ;
 struct sk_buff* cdc_ncm_fill_tx_frame (struct usbnet*,struct sk_buff*,int ) ;
 int cpu_to_le32 (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 TYPE_2__* eth_hdr (struct sk_buff*) ;
 int is_ip_proto (int ) ;
 int netif_err (struct usbnet*,int ,int ,char*,int) ;
 int skb_pull (struct sk_buff*,scalar_t__) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int tx_err ;
 TYPE_1__* vlan_eth_hdr (struct sk_buff*) ;
 scalar_t__ vlan_get_tag (struct sk_buff*,int*) ;

__attribute__((used)) static struct sk_buff *cdc_mbim_tx_fixup(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
 struct sk_buff *skb_out;
 struct cdc_mbim_state *info = (void *)&dev->data;
 struct cdc_ncm_ctx *ctx = info->ctx;
 __le32 sign = cpu_to_le32(USB_CDC_MBIM_NDP16_IPS_SIGN);
 u16 tci = 0;
 bool is_ip;
 u8 *c;

 if (!ctx)
  goto error;

 if (skb) {
  if (skb->len <= ETH_HLEN)
   goto error;







  skb_reset_mac_header(skb);
  if (vlan_get_tag(skb, &tci) < 0 && skb->len > VLAN_ETH_HLEN &&
      __vlan_get_tag(skb, &tci) == 0) {
   is_ip = is_ip_proto(vlan_eth_hdr(skb)->h_vlan_encapsulated_proto);
   skb_pull(skb, VLAN_ETH_HLEN);
  } else {
   is_ip = is_ip_proto(eth_hdr(skb)->h_proto);
   skb_pull(skb, ETH_HLEN);
  }


  if (info->flags & FLAG_IPS0_VLAN) {

   if (!tci)
    goto error;

   if (tci == MBIM_IPS0_VID)
    tci = 0;
  }
  switch (tci & 0x0f00) {
  case 0x0000:
   if (!is_ip)
    goto error;
   c = (u8 *)&sign;
   c[3] = tci;
   break;
  case 0x0100:
   if (is_ip)
    goto error;
   sign = cpu_to_le32(USB_CDC_MBIM_NDP16_DSS_SIGN);
   c = (u8 *)&sign;
   c[3] = tci;
   break;
  default:
   netif_err(dev, tx_err, dev->net,
      "unsupported tci=0x%04x\n", tci);
   goto error;
  }
 }

 spin_lock_bh(&ctx->mtx);
 skb_out = cdc_ncm_fill_tx_frame(dev, skb, sign);
 spin_unlock_bh(&ctx->mtx);
 return skb_out;

error:
 if (skb)
  dev_kfree_skb_any(skb);

 return ((void*)0);
}
