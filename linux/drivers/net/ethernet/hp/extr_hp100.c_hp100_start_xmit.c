
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct sk_buff {int len; int data; } ;
struct TYPE_2__ {int tx_bytes; int tx_packets; } ;
struct net_device {int base_addr; int name; TYPE_1__ stats; } ;
struct hp100_private {int lan_type; scalar_t__ hub_status; int mode; int lock; int mem_ptr_virt; } ;
typedef int netdev_tx_t ;


 int DATA32 ;
 int FRAGMENT_LEN ;
 int HP100_LAN_100 ;
 int HP100_LAN_ERR ;
 int HP100_MIN_PACKET_SIZE ;
 scalar_t__ HP100_REG_DATA32 ;
 int HP100_SET_LB ;
 int HP100_TX_CMD ;
 int HP100_TX_COMPLETE ;
 scalar_t__ HZ ;
 int IRQ_MASK ;
 int IRQ_STATUS ;
 int NETDEV_TX_OK ;
 int OPTION_MSW ;
 int TRACE ;
 int TX_MEM_FREE ;
 int TX_PKT_CNT ;
 int dev_consume_skb_any (struct sk_buff*) ;
 int dev_kfree_skb (struct sk_buff*) ;
 scalar_t__ dev_trans_start (struct net_device*) ;
 scalar_t__ hp100_check_lan (struct net_device*) ;
 int hp100_inb (int ) ;
 int hp100_inl (int ) ;
 int hp100_ints_off () ;
 int hp100_ints_on () ;
 int hp100_inw (int ) ;
 void* hp100_login_to_vg_hub (struct net_device*,int ) ;
 int hp100_outb (int,int ) ;
 int hp100_outl (int ,int ) ;
 int hp100_outw (int,int ) ;
 int hp100_sense_lan (struct net_device*) ;
 int hp100_start_interface (struct net_device*) ;
 int hp100_stop_interface (struct net_device*) ;
 int jiffies ;
 int mdelay (int) ;
 int memcpy_toio (int ,int ,int) ;
 int memset_io (int ,int ,int) ;
 struct hp100_private* netdev_priv (struct net_device*) ;
 int outsl (scalar_t__,int ,int) ;
 int printk (char*,int ,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ time_before (int ,scalar_t__) ;

__attribute__((used)) static netdev_tx_t hp100_start_xmit(struct sk_buff *skb,
        struct net_device *dev)
{
 unsigned long flags;
 int i, ok_flag;
 int ioaddr = dev->base_addr;
 u_short val;
 struct hp100_private *lp = netdev_priv(dev);





 if (skb->len <= 0)
  goto drop;

 if (hp100_check_lan(dev))
  goto drop;


 i = hp100_inl(TX_MEM_FREE) & 0x7fffffff;
 if (!(((i / 2) - 539) > (skb->len + 16) && (hp100_inb(TX_PKT_CNT) < 255))) {




  if (time_before(jiffies, dev_trans_start(dev) + HZ)) {




   goto drop;
  }
  if (lp->lan_type == HP100_LAN_100 && lp->hub_status < 0) {

   printk("hp100: %s: login to 100Mb/s hub retry\n", dev->name);
   hp100_stop_interface(dev);
   lp->hub_status = hp100_login_to_vg_hub(dev, 0);
   hp100_start_interface(dev);
  } else {
   spin_lock_irqsave(&lp->lock, flags);
   hp100_ints_off();
   i = hp100_sense_lan(dev);
   hp100_ints_on();
   spin_unlock_irqrestore(&lp->lock, flags);
   if (i == HP100_LAN_ERR)
    printk("hp100: %s: link down detected\n", dev->name);
   else if (lp->lan_type != i) {

    printk("hp100: %s: cable change 10Mb/s <-> 100Mb/s detected\n", dev->name);
    lp->lan_type = i;
    hp100_stop_interface(dev);
    if (lp->lan_type == HP100_LAN_100)
     lp->hub_status = hp100_login_to_vg_hub(dev, 0);
    hp100_start_interface(dev);
   } else {
    printk("hp100: %s: interface reset\n", dev->name);
    hp100_stop_interface(dev);
    if (lp->lan_type == HP100_LAN_100)
     lp->hub_status = hp100_login_to_vg_hub(dev, 0);
    hp100_start_interface(dev);
    mdelay(1);
   }
  }
  goto drop;
 }

 for (i = 0; i < 6000 && (hp100_inb(OPTION_MSW) & HP100_TX_CMD); i++) {



 }

 spin_lock_irqsave(&lp->lock, flags);
 hp100_ints_off();
 val = hp100_inw(IRQ_STATUS);


 hp100_outw(HP100_TX_COMPLETE, IRQ_STATUS);





 ok_flag = skb->len >= HP100_MIN_PACKET_SIZE;
 i = ok_flag ? skb->len : HP100_MIN_PACKET_SIZE;

 hp100_outw(i, DATA32);
 hp100_outw(i, FRAGMENT_LEN);

 if (lp->mode == 2) {

  memcpy_toio(lp->mem_ptr_virt, skb->data, (skb->len + 3) & ~3);
  if (!ok_flag)
   memset_io(lp->mem_ptr_virt, 0, HP100_MIN_PACKET_SIZE - skb->len);
 } else {
  outsl(ioaddr + HP100_REG_DATA32, skb->data,
        (skb->len + 3) >> 2);
  if (!ok_flag)
   for (i = (skb->len + 3) & ~3; i < HP100_MIN_PACKET_SIZE; i += 4)
    hp100_outl(0, DATA32);
 }

 hp100_outb(HP100_TX_CMD | HP100_SET_LB, OPTION_MSW);

 dev->stats.tx_packets++;
 dev->stats.tx_bytes += skb->len;
 hp100_ints_on();
 spin_unlock_irqrestore(&lp->lock, flags);

 dev_consume_skb_any(skb);





 return NETDEV_TX_OK;

drop:
 dev_kfree_skb(skb);
 return NETDEV_TX_OK;

}
