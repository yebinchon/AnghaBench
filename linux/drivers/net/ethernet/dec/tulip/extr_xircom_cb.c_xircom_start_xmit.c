
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xircom_private {int transmit_used; scalar_t__* tx_buffer; int lock; struct sk_buff** tx_skb; } ;
struct sk_buff {int len; } ;
struct net_device {int dummy; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int NUMDESCRIPTORS ;
 int* bufferoffsets ;
 int cpu_to_le32 (int) ;
 int investigate_write_descriptor (struct net_device*,struct xircom_private*,int,int) ;
 int memset (scalar_t__*,int ,int) ;
 struct xircom_private* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_copy_from_linear_data (struct sk_buff*,scalar_t__*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trigger_transmit (struct xircom_private*) ;
 int wmb () ;

__attribute__((used)) static netdev_tx_t xircom_start_xmit(struct sk_buff *skb,
        struct net_device *dev)
{
 struct xircom_private *card;
 unsigned long flags;
 int nextdescriptor;
 int desc;

 card = netdev_priv(dev);
 spin_lock_irqsave(&card->lock,flags);


 for (desc=0;desc<NUMDESCRIPTORS;desc++)
  investigate_write_descriptor(dev,card,desc,bufferoffsets[desc]);


 nextdescriptor = (card->transmit_used +1) % (NUMDESCRIPTORS);
 desc = card->transmit_used;


 if (card->tx_buffer[4*desc]==0) {



   memset(&card->tx_buffer[bufferoffsets[desc]/4],0,1536);
   skb_copy_from_linear_data(skb,
      &(card->tx_buffer[bufferoffsets[desc] / 4]),
        skb->len);



   card->tx_buffer[4*desc+1] = cpu_to_le32(skb->len);
   if (desc == NUMDESCRIPTORS - 1)
    card->tx_buffer[4*desc+1] |= cpu_to_le32(1<<25);

   card->tx_buffer[4*desc+1] |= cpu_to_le32(0xF0000000);

   card->tx_skb[desc] = skb;

   wmb();

   card->tx_buffer[4*desc] = cpu_to_le32(0x80000000);
   trigger_transmit(card);
   if (card->tx_buffer[nextdescriptor*4] & cpu_to_le32(0x8000000)) {

    netif_stop_queue(dev);
   }
   card->transmit_used = nextdescriptor;
   spin_unlock_irqrestore(&card->lock,flags);
   return NETDEV_TX_OK;
 }


 netif_stop_queue(dev);
 spin_unlock_irqrestore(&card->lock,flags);
 trigger_transmit(card);

 return NETDEV_TX_BUSY;
}
