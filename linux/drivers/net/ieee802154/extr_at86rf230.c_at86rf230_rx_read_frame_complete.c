
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sk_buff {int dummy; } ;
struct at86rf230_state_change {int* buf; struct at86rf230_local* lp; } ;
struct at86rf230_local {int hw; TYPE_1__* spi; } ;
struct TYPE_2__ {int dev; } ;


 int IEEE802154_MTU ;
 struct sk_buff* dev_alloc_skb (int) ;
 int dev_vdbg (int *,char*) ;
 int ieee802154_is_valid_psdu_len (int) ;
 int ieee802154_rx_irqsafe (int ,struct sk_buff*,int) ;
 int kfree (struct at86rf230_state_change*) ;
 int skb_put_data (struct sk_buff*,int const*,int) ;

__attribute__((used)) static void
at86rf230_rx_read_frame_complete(void *context)
{
 struct at86rf230_state_change *ctx = context;
 struct at86rf230_local *lp = ctx->lp;
 const u8 *buf = ctx->buf;
 struct sk_buff *skb;
 u8 len, lqi;

 len = buf[1];
 if (!ieee802154_is_valid_psdu_len(len)) {
  dev_vdbg(&lp->spi->dev, "corrupted frame received\n");
  len = IEEE802154_MTU;
 }
 lqi = buf[2 + len];

 skb = dev_alloc_skb(IEEE802154_MTU);
 if (!skb) {
  dev_vdbg(&lp->spi->dev, "failed to allocate sk_buff\n");
  kfree(ctx);
  return;
 }

 skb_put_data(skb, buf + 2, len);
 ieee802154_rx_irqsafe(lp->hw, skb, lqi);
 kfree(ctx);
}
