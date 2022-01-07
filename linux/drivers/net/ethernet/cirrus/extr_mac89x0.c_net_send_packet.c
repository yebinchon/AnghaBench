
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int* data; scalar_t__ len; } ;
struct net_local {scalar_t__ send_cmd; } ;
struct net_device {scalar_t__ mem_start; } ;
typedef int netdev_tx_t ;


 size_t ETH_ALEN ;
 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int PP_BusST ;
 int PP_TxCMD ;
 scalar_t__ PP_TxFrame ;
 int PP_TxLength ;
 int READY_FOR_TX_NOW ;
 int dev_kfree_skb (struct sk_buff*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 struct net_local* netdev_priv (struct net_device*) ;
 int netif_dbg (struct net_local*,int ,struct net_device*,char*,scalar_t__,int) ;
 int netif_stop_queue (struct net_device*) ;
 int readreg (struct net_device*,int ) ;
 int skb_copy_from_linear_data (struct sk_buff*,void*,scalar_t__) ;
 int tx_queued ;
 int writereg (struct net_device*,int ,scalar_t__) ;

__attribute__((used)) static netdev_tx_t
net_send_packet(struct sk_buff *skb, struct net_device *dev)
{
 struct net_local *lp = netdev_priv(dev);
 unsigned long flags;

 netif_dbg(lp, tx_queued, dev, "sent %d byte packet of type %x\n",
    skb->len, skb->data[ETH_ALEN + ETH_ALEN] << 8 |
    skb->data[ETH_ALEN + ETH_ALEN + 1]);




 local_irq_save(flags);
 netif_stop_queue(dev);


 writereg(dev, PP_TxCMD, lp->send_cmd);
 writereg(dev, PP_TxLength, skb->len);


 if ((readreg(dev, PP_BusST) & READY_FOR_TX_NOW) == 0) {


  local_irq_restore(flags);
  return NETDEV_TX_BUSY;
 }


 skb_copy_from_linear_data(skb, (void *)(dev->mem_start + PP_TxFrame),
      skb->len+1);

 local_irq_restore(flags);
 dev_kfree_skb (skb);

 return NETDEV_TX_OK;
}
