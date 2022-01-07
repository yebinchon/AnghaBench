
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int dummy; } ;
struct mrf24j40 {int * rx_lqi_buf; int hw; int rx_fifo_buf; int * rx_buf; } ;


 int DUMP_PREFIX_OFFSET ;
 int IEEE802154_MTU ;
 int KERN_DEBUG ;
 int RX_FIFO_SIZE ;
 struct sk_buff* dev_alloc_skb (int ) ;
 int dev_err (int ,char*) ;
 int ieee802154_rx_irqsafe (int ,struct sk_buff*,int ) ;
 int memcpy (int *,int ,int ) ;
 int mrf24j40_handle_rx_read_buf_unlock (struct mrf24j40*) ;
 int pr_debug (char*,int ,int ) ;
 int print_hex_dump (int ,char*,int ,int,int,int *,int ,int ) ;
 int printdev (struct mrf24j40*) ;
 int skb_put_data (struct sk_buff*,int *,int ) ;

__attribute__((used)) static void mrf24j40_handle_rx_read_buf_complete(void *context)
{
 struct mrf24j40 *devrec = context;
 u8 len = devrec->rx_buf[2];
 u8 rx_local_buf[RX_FIFO_SIZE];
 struct sk_buff *skb;

 memcpy(rx_local_buf, devrec->rx_fifo_buf, len);
 mrf24j40_handle_rx_read_buf_unlock(devrec);

 skb = dev_alloc_skb(IEEE802154_MTU);
 if (!skb) {
  dev_err(printdev(devrec), "failed to allocate skb\n");
  return;
 }

 skb_put_data(skb, rx_local_buf, len);
 ieee802154_rx_irqsafe(devrec->hw, skb, 0);







}
