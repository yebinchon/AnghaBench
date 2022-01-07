
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rx_fifo_errors; int rx_crc_errors; } ;
struct tsi108_prv_data {int rxtail; TYPE_2__* rxring; int misclock; TYPE_1__ stats; scalar_t__ rxfree; struct sk_buff** rxskbs; } ;
struct sk_buff {int protocol; int * data; } ;
struct net_device {int name; } ;
struct TYPE_4__ {int misc; int len; } ;


 int TSI108_RXRING_LEN ;
 int TSI108_RX_BAD ;
 int TSI108_RX_CRC ;
 int TSI108_RX_OVER ;
 int TSI108_RX_OWN ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 struct tsi108_prv_data* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_pktdata (struct tsi108_prv_data*) ;
 int netif_receive_skb (struct sk_buff*) ;
 int printk (char*,...) ;
 int skb_put (struct sk_buff*,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int tsi108_complete_rx(struct net_device *dev, int budget)
{
 struct tsi108_prv_data *data = netdev_priv(dev);
 int done = 0;

 while (data->rxfree && done != budget) {
  int rx = data->rxtail;
  struct sk_buff *skb;

  if (data->rxring[rx].misc & TSI108_RX_OWN)
   break;

  skb = data->rxskbs[rx];
  data->rxtail = (data->rxtail + 1) % TSI108_RXRING_LEN;
  data->rxfree--;
  done++;

  if (data->rxring[rx].misc & TSI108_RX_BAD) {
   spin_lock_irq(&data->misclock);

   if (data->rxring[rx].misc & TSI108_RX_CRC)
    data->stats.rx_crc_errors++;
   if (data->rxring[rx].misc & TSI108_RX_OVER)
    data->stats.rx_fifo_errors++;

   spin_unlock_irq(&data->misclock);

   dev_kfree_skb_any(skb);
   continue;
  }
  if (netif_msg_pktdata(data)) {
   int i;
   printk("%s: Rx Frame contents (%d)\n",
          dev->name, data->rxring[rx].len);
   for (i = 0; i < data->rxring[rx].len; i++)
    printk(" %2.2x", skb->data[i]);
   printk(".\n");
  }

  skb_put(skb, data->rxring[rx].len);
  skb->protocol = eth_type_trans(skb, dev);
  netif_receive_skb(skb);
 }

 return done;
}
