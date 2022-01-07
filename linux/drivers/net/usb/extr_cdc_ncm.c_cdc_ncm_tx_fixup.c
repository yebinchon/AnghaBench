
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbnet {scalar_t__* data; } ;
struct sk_buff {int dummy; } ;
struct cdc_ncm_ctx {int mtx; } ;
typedef int gfp_t ;


 int USB_CDC_NCM_NDP16_NOCRC_SIGN ;
 struct sk_buff* cdc_ncm_fill_tx_frame (struct usbnet*,struct sk_buff*,int ) ;
 int cpu_to_le32 (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

struct sk_buff *
cdc_ncm_tx_fixup(struct usbnet *dev, struct sk_buff *skb, gfp_t flags)
{
 struct sk_buff *skb_out;
 struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
 if (ctx == ((void*)0))
  goto error;

 spin_lock_bh(&ctx->mtx);
 skb_out = cdc_ncm_fill_tx_frame(dev, skb, cpu_to_le32(USB_CDC_NCM_NDP16_NOCRC_SIGN));
 spin_unlock_bh(&ctx->mtx);
 return skb_out;

error:
 if (skb != ((void*)0))
  dev_kfree_skb_any(skb);

 return ((void*)0);
}
