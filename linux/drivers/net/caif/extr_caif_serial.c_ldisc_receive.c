
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct tty_struct {struct ser_device* disc_data; } ;
struct sk_buff {int protocol; } ;
struct TYPE_4__ {int use_stx; } ;
struct ser_device {TYPE_3__* dev; int tx_started; TYPE_1__ common; } ;
struct TYPE_5__ {int rx_bytes; int rx_dropped; int rx_packets; } ;
struct TYPE_6__ {TYPE_2__ stats; int dev; } ;


 int BUG_ON (int ) ;
 int ETH_P_CAIF ;
 int debugfs_rx (struct ser_device*,int const*,int) ;
 int dev_info (int *,char*) ;
 int htons (int ) ;
 struct sk_buff* netdev_alloc_skb (TYPE_3__*,int) ;
 int netif_rx_ni (struct sk_buff*) ;
 int skb_put_data (struct sk_buff*,int const*,int) ;
 int skb_reset_mac_header (struct sk_buff*) ;
 int update_tty_status (struct ser_device*) ;

__attribute__((used)) static void ldisc_receive(struct tty_struct *tty, const u8 *data,
   char *flags, int count)
{
 struct sk_buff *skb = ((void*)0);
 struct ser_device *ser;
 int ret;

 ser = tty->disc_data;
 if (!ser->common.use_stx && !ser->tx_started) {
  dev_info(&ser->dev->dev,
   "Bytes received before initial transmission -"
   "bytes discarded.\n");
  return;
 }

 BUG_ON(ser->dev == ((void*)0));


 skb = netdev_alloc_skb(ser->dev, count+1);
 if (skb == ((void*)0))
  return;
 skb_put_data(skb, data, count);

 skb->protocol = htons(ETH_P_CAIF);
 skb_reset_mac_header(skb);
 debugfs_rx(ser, data, count);

 ret = netif_rx_ni(skb);
 if (!ret) {
  ser->dev->stats.rx_packets++;
  ser->dev->stats.rx_bytes += count;
 } else
  ++ser->dev->stats.rx_dropped;
 update_tty_status(ser);
}
