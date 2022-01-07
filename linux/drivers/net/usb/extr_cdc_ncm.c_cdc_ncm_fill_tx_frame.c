
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
typedef scalar_t__ u16 ;
struct usbnet {int maxpacket; TYPE_2__* driver_info; TYPE_4__* net; scalar_t__* data; } ;
struct usb_cdc_ncm_nth16 {void* wBlockLength; void* wNdpIndex; void* wSequence; void* wHeaderLength; int dwSignature; } ;
struct usb_cdc_ncm_ndp16 {void* wLength; TYPE_1__* dpe16; } ;
struct usb_cdc_ncm_dpe16 {int dummy; } ;
struct sk_buff {size_t len; scalar_t__ data; } ;
struct cdc_ncm_ctx {int drvflags; size_t max_ndp_size; scalar_t__ tx_low_mem_val; size_t tx_curr_size; size_t tx_max; scalar_t__ tx_low_mem_max_cnt; scalar_t__ tx_curr_frame_num; size_t tx_curr_frame_payload; scalar_t__ tx_max_datagrams; scalar_t__ timer_interval; scalar_t__ min_tx_pkt; struct sk_buff* tx_curr_skb; int tx_ntbs; int tx_overhead; scalar_t__ delayed_ndp16; scalar_t__ tx_ndp_modulus; int tx_reason_max_datagram; int tx_timer_pending; int tx_reason_ndp_full; int tx_reason_ntb_full; struct sk_buff* tx_rem_sign; struct sk_buff* tx_rem_skb; scalar_t__ tx_remainder; scalar_t__ tx_modulus; int tx_seq; } ;
typedef struct sk_buff* __le32 ;
struct TYPE_7__ {int tx_dropped; } ;
struct TYPE_8__ {TYPE_3__ stats; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {void* wDatagramIndex; void* wDatagramLength; } ;


 size_t ALIGN (size_t,scalar_t__) ;
 scalar_t__ CDC_NCM_DPT_DATAGRAMS_MAX ;
 int CDC_NCM_FLAG_NDP_TO_END ;
 scalar_t__ CDC_NCM_LOW_MEM_MAX_CNT ;
 scalar_t__ CDC_NCM_RESTART_TIMER_DATAGRAM_CNT ;
 int CDC_NCM_TIMER_PENDING_CNT ;
 int FLAG_SEND_ZLP ;
 int GFP_ATOMIC ;
 size_t USB_CDC_NCM_NTB_MIN_OUT_SIZE ;
 int USB_CDC_NCM_NTH16_SIGN ;
 struct sk_buff* alloc_skb (size_t,int ) ;
 int cdc_ncm_align_tail (struct sk_buff*,scalar_t__,scalar_t__,size_t) ;
 struct usb_cdc_ncm_ndp16* cdc_ncm_ndp (struct cdc_ncm_ctx*,struct sk_buff*,struct sk_buff*,scalar_t__) ;
 int cdc_ncm_tx_timeout_start (struct cdc_ncm_ctx*) ;
 void* cpu_to_le16 (scalar_t__) ;
 int cpu_to_le32 (int ) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 scalar_t__ le16_to_cpu (void*) ;
 size_t max (size_t,size_t) ;
 struct usb_cdc_ncm_ndp16* memset (scalar_t__,int ,size_t) ;
 scalar_t__ min (scalar_t__,unsigned int) ;
 int skb_put_data (struct sk_buff*,scalar_t__,size_t) ;
 int skb_put_u8 (struct sk_buff*,int ) ;
 struct usb_cdc_ncm_nth16* skb_put_zero (struct sk_buff*,size_t) ;
 int swap (struct sk_buff*,struct sk_buff*) ;
 int usbnet_set_skb_tx_stats (struct sk_buff*,scalar_t__,long) ;

struct sk_buff *
cdc_ncm_fill_tx_frame(struct usbnet *dev, struct sk_buff *skb, __le32 sign)
{
 struct cdc_ncm_ctx *ctx = (struct cdc_ncm_ctx *)dev->data[0];
 struct usb_cdc_ncm_nth16 *nth16;
 struct usb_cdc_ncm_ndp16 *ndp16;
 struct sk_buff *skb_out;
 u16 n = 0, index, ndplen;
 u8 ready2send = 0;
 u32 delayed_ndp_size;
 size_t padding_count;




 if (ctx->drvflags & CDC_NCM_FLAG_NDP_TO_END)
  delayed_ndp_size = ALIGN(ctx->max_ndp_size, ctx->tx_ndp_modulus);
 else
  delayed_ndp_size = 0;


 if (skb != ((void*)0)) {
  swap(skb, ctx->tx_rem_skb);
  swap(sign, ctx->tx_rem_sign);
 } else {
  ready2send = 1;
 }


 skb_out = ctx->tx_curr_skb;


 if (!skb_out) {
  if (ctx->tx_low_mem_val == 0) {
   ctx->tx_curr_size = ctx->tx_max;
   skb_out = alloc_skb(ctx->tx_curr_size, GFP_ATOMIC);





   if (skb_out == ((void*)0)) {
    ctx->tx_low_mem_max_cnt = min(ctx->tx_low_mem_max_cnt + 1,
             (unsigned)CDC_NCM_LOW_MEM_MAX_CNT);
    ctx->tx_low_mem_val = ctx->tx_low_mem_max_cnt;
   }
  }
  if (skb_out == ((void*)0)) {




   if (skb)
    ctx->tx_curr_size = max(skb->len,
     (u32)USB_CDC_NCM_NTB_MIN_OUT_SIZE);
   else
    ctx->tx_curr_size = USB_CDC_NCM_NTB_MIN_OUT_SIZE;
   skb_out = alloc_skb(ctx->tx_curr_size, GFP_ATOMIC);


   if (skb_out == ((void*)0)) {
    if (skb != ((void*)0)) {
     dev_kfree_skb_any(skb);
     dev->net->stats.tx_dropped++;
    }
    goto exit_no_skb;
   }
   ctx->tx_low_mem_val--;
  }

  nth16 = skb_put_zero(skb_out, sizeof(struct usb_cdc_ncm_nth16));
  nth16->dwSignature = cpu_to_le32(USB_CDC_NCM_NTH16_SIGN);
  nth16->wHeaderLength = cpu_to_le16(sizeof(struct usb_cdc_ncm_nth16));
  nth16->wSequence = cpu_to_le16(ctx->tx_seq++);


  ctx->tx_curr_frame_num = 0;


  ctx->tx_curr_frame_payload = 0;
 }

 for (n = ctx->tx_curr_frame_num; n < ctx->tx_max_datagrams; n++) {

  if (skb == ((void*)0)) {
   skb = ctx->tx_rem_skb;
   sign = ctx->tx_rem_sign;
   ctx->tx_rem_skb = ((void*)0);


   if (skb == ((void*)0))
    break;
  }


  ndp16 = cdc_ncm_ndp(ctx, skb_out, sign, skb->len + ctx->tx_modulus + ctx->tx_remainder);


  cdc_ncm_align_tail(skb_out, ctx->tx_modulus, ctx->tx_remainder, ctx->tx_curr_size);


  if (!ndp16 || skb_out->len + skb->len + delayed_ndp_size > ctx->tx_curr_size) {
   if (n == 0) {

    dev_kfree_skb_any(skb);
    skb = ((void*)0);
    dev->net->stats.tx_dropped++;
   } else {

    if (ctx->tx_rem_skb != ((void*)0)) {
     dev_kfree_skb_any(ctx->tx_rem_skb);
     dev->net->stats.tx_dropped++;
    }
    ctx->tx_rem_skb = skb;
    ctx->tx_rem_sign = sign;
    skb = ((void*)0);
    ready2send = 1;
    ctx->tx_reason_ntb_full++;
   }
   break;
  }


  ndplen = le16_to_cpu(ndp16->wLength);
  index = (ndplen - sizeof(struct usb_cdc_ncm_ndp16)) / sizeof(struct usb_cdc_ncm_dpe16) - 1;


  ndp16->dpe16[index].wDatagramLength = cpu_to_le16(skb->len);
  ndp16->dpe16[index].wDatagramIndex = cpu_to_le16(skb_out->len);
  ndp16->wLength = cpu_to_le16(ndplen + sizeof(struct usb_cdc_ncm_dpe16));
  skb_put_data(skb_out, skb->data, skb->len);
  ctx->tx_curr_frame_payload += skb->len;
  dev_kfree_skb_any(skb);
  skb = ((void*)0);


  if (index >= CDC_NCM_DPT_DATAGRAMS_MAX) {
   ready2send = 1;
   ctx->tx_reason_ndp_full++;
   break;
  }
 }


 if (skb != ((void*)0)) {
  dev_kfree_skb_any(skb);
  skb = ((void*)0);
  dev->net->stats.tx_dropped++;
 }

 ctx->tx_curr_frame_num = n;

 if (n == 0) {


  ctx->tx_curr_skb = skb_out;
  goto exit_no_skb;

 } else if ((n < ctx->tx_max_datagrams) && (ready2send == 0) && (ctx->timer_interval > 0)) {


  ctx->tx_curr_skb = skb_out;

  if (n < CDC_NCM_RESTART_TIMER_DATAGRAM_CNT)
   ctx->tx_timer_pending = CDC_NCM_TIMER_PENDING_CNT;
  goto exit_no_skb;

 } else {
  if (n == ctx->tx_max_datagrams)
   ctx->tx_reason_max_datagram++;


 }


 if (ctx->drvflags & CDC_NCM_FLAG_NDP_TO_END) {
  nth16 = (struct usb_cdc_ncm_nth16 *)skb_out->data;
  cdc_ncm_align_tail(skb_out, ctx->tx_ndp_modulus, 0, ctx->tx_curr_size - ctx->max_ndp_size);
  nth16->wNdpIndex = cpu_to_le16(skb_out->len);
  skb_put_data(skb_out, ctx->delayed_ndp16, ctx->max_ndp_size);


  ndp16 = memset(ctx->delayed_ndp16, 0, ctx->max_ndp_size);
 }
 if (!(dev->driver_info->flags & FLAG_SEND_ZLP) &&
     skb_out->len > ctx->min_tx_pkt) {
  padding_count = ctx->tx_curr_size - skb_out->len;
  skb_put_zero(skb_out, padding_count);
 } else if (skb_out->len < ctx->tx_curr_size &&
     (skb_out->len % dev->maxpacket) == 0) {
  skb_put_u8(skb_out, 0);
 }


 nth16 = (struct usb_cdc_ncm_nth16 *)skb_out->data;
 nth16->wBlockLength = cpu_to_le16(skb_out->len);


 ctx->tx_curr_skb = ((void*)0);


 ctx->tx_overhead += skb_out->len - ctx->tx_curr_frame_payload;
 ctx->tx_ntbs++;





 usbnet_set_skb_tx_stats(skb_out, n,
    (long)ctx->tx_curr_frame_payload - skb_out->len);

 return skb_out;

exit_no_skb:

 if (ctx->tx_curr_skb != ((void*)0) && n > 0)
  cdc_ncm_tx_timeout_start(ctx);
 return ((void*)0);
}
