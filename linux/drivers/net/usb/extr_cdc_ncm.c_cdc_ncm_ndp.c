
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_cdc_ncm_nth16 {void* wNdpIndex; } ;
struct usb_cdc_ncm_ndp16 {scalar_t__ dwSignature; void* wLength; void* wNextNdpIndex; } ;
struct usb_cdc_ncm_dpe16 {int dummy; } ;
struct sk_buff {size_t len; scalar_t__ data; } ;
struct cdc_ncm_ctx {int drvflags; size_t tx_curr_size; size_t max_ndp_size; struct usb_cdc_ncm_ndp16* delayed_ndp16; int tx_ndp_modulus; } ;
typedef scalar_t__ __le32 ;


 int CDC_NCM_FLAG_NDP_TO_END ;
 int cdc_ncm_align_tail (struct sk_buff*,int ,int ,size_t) ;
 void* cpu_to_le16 (int) ;
 size_t le16_to_cpu (void*) ;
 struct usb_cdc_ncm_ndp16* skb_put_zero (struct sk_buff*,size_t) ;

__attribute__((used)) static struct usb_cdc_ncm_ndp16 *cdc_ncm_ndp(struct cdc_ncm_ctx *ctx, struct sk_buff *skb, __le32 sign, size_t reserve)
{
 struct usb_cdc_ncm_ndp16 *ndp16 = ((void*)0);
 struct usb_cdc_ncm_nth16 *nth16 = (void *)skb->data;
 size_t ndpoffset = le16_to_cpu(nth16->wNdpIndex);





 if (ctx->drvflags & CDC_NCM_FLAG_NDP_TO_END) {
  if (ctx->delayed_ndp16->dwSignature == sign)
   return ctx->delayed_ndp16;





  else if (ctx->delayed_ndp16->dwSignature)
   return ((void*)0);
 }


 while (ndpoffset) {
  ndp16 = (struct usb_cdc_ncm_ndp16 *)(skb->data + ndpoffset);
  if (ndp16->dwSignature == sign)
   return ndp16;
  ndpoffset = le16_to_cpu(ndp16->wNextNdpIndex);
 }


 if (!(ctx->drvflags & CDC_NCM_FLAG_NDP_TO_END))
  cdc_ncm_align_tail(skb, ctx->tx_ndp_modulus, 0, ctx->tx_curr_size);


 if ((ctx->tx_curr_size - skb->len - reserve) < ctx->max_ndp_size)
  return ((void*)0);


 if (ndp16)
  ndp16->wNextNdpIndex = cpu_to_le16(skb->len);
 else
  nth16->wNdpIndex = cpu_to_le16(skb->len);


 if (!(ctx->drvflags & CDC_NCM_FLAG_NDP_TO_END))
  ndp16 = skb_put_zero(skb, ctx->max_ndp_size);
 else
  ndp16 = ctx->delayed_ndp16;

 ndp16->dwSignature = sign;
 ndp16->wLength = cpu_to_le16(sizeof(struct usb_cdc_ncm_ndp16) + sizeof(struct usb_cdc_ncm_dpe16));
 return ndp16;
}
