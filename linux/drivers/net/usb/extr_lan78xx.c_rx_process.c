
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ len; } ;
struct lan78xx_net {int done; TYPE_2__* net; } ;
struct TYPE_3__ {int rx_errors; } ;
struct TYPE_4__ {TYPE_1__ stats; } ;


 int lan78xx_rx (struct lan78xx_net*,struct sk_buff*) ;
 int lan78xx_skb_return (struct lan78xx_net*,struct sk_buff*) ;
 int netif_dbg (struct lan78xx_net*,int ,TYPE_2__*,char*) ;
 int rx_err ;
 int skb_queue_tail (int *,struct sk_buff*) ;

__attribute__((used)) static inline void rx_process(struct lan78xx_net *dev, struct sk_buff *skb)
{
 if (!lan78xx_rx(dev, skb)) {
  dev->net->stats.rx_errors++;
  goto done;
 }

 if (skb->len) {
  lan78xx_skb_return(dev, skb);
  return;
 }

 netif_dbg(dev, rx_err, dev->net, "drop\n");
 dev->net->stats.rx_errors++;
done:
 skb_queue_tail(&dev->done, skb);
}
