
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int len; int * data; TYPE_1__* dev; } ;
struct TYPE_4__ {int tx_errors; int tx_dropped; int tx_packets; } ;
struct net_device {int type; TYPE_2__ stats; scalar_t__ mem_start; } ;
struct frad_local {int type; struct net_device** master; } ;
struct buf_entry {int opp_flag; int buf_addr; } ;
typedef int netdev_tx_t ;
typedef int addr ;
struct TYPE_3__ {int type; scalar_t__ dev_addr; } ;


 int ARPHRD_DLCI ;

 int CONFIG_DLCI_MAX ;
 int NETDEV_TX_OK ;
 int SDLA_ADDR_MASK ;
 int SDLA_INFORMATION_WRITE ;







 int SDLA_WINDOW (struct net_device*,int) ;
 int __sdla_write (struct net_device*,int ,int *,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 struct frad_local* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*,int) ;
 int netif_stop_queue (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int sdla_cmd (struct net_device*,int ,short,int ,int *,int ,int*,short*) ;
 int sdla_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static netdev_tx_t sdla_transmit(struct sk_buff *skb,
     struct net_device *dev)
{
 struct frad_local *flp;
 int ret, addr, accept, i;
 short size;
 unsigned long flags;
 struct buf_entry *pbuf;

 flp = netdev_priv(dev);
 ret = 0;
 accept = 1;

 netif_stop_queue(dev);







 accept = 1;
 switch (dev->type)
 {
  case 135:
   if (skb->dev->type != ARPHRD_DLCI)
   {
    netdev_warn(dev, "Non DLCI device, type %i, tried to send on FRAD module\n",
         skb->dev->type);
    accept = 0;
   }
   break;
  default:
   netdev_warn(dev, "unknown firmware type 0x%04X\n",
        dev->type);
   accept = 0;
   break;
 }
 if (accept)
 {

  switch (flp->type)
  {
   case 130:
   case 129:
    ret = sdla_cmd(dev, SDLA_INFORMATION_WRITE, *(short *)(skb->dev->dev_addr), 0, skb->data, skb->len, ((void*)0), ((void*)0));
    break;
    case 128:
    size = sizeof(addr);
    ret = sdla_cmd(dev, SDLA_INFORMATION_WRITE, *(short *)(skb->dev->dev_addr), 0, ((void*)0), skb->len, &addr, &size);
    if (ret == 131)
    {

     spin_lock_irqsave(&sdla_lock, flags);
     SDLA_WINDOW(dev, addr);
     pbuf = (void *)(((int) dev->mem_start) + (addr & SDLA_ADDR_MASK));
     __sdla_write(dev, pbuf->buf_addr, skb->data, skb->len);
     SDLA_WINDOW(dev, addr);
     pbuf->opp_flag = 1;
     spin_unlock_irqrestore(&sdla_lock, flags);
    }
    break;
  }

  switch (ret)
  {
   case 131:
    dev->stats.tx_packets++;
    break;

   case 133:
   case 134:
   case 132:
    dev->stats.tx_dropped++;
    break;

   default:
    dev->stats.tx_errors++;
    break;
  }
 }
 netif_wake_queue(dev);
 for(i=0;i<CONFIG_DLCI_MAX;i++)
 {
  if(flp->master[i]!=((void*)0))
   netif_wake_queue(flp->master[i]);
 }

 dev_kfree_skb(skb);
 return NETDEV_TX_OK;
}
