
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct sdla_cmd {int opp_flag; short dlci; short length; } ;
struct TYPE_2__ {int rx_packets; int rx_dropped; int rx_errors; } ;
struct net_device {int mem_start; TYPE_1__ stats; } ;
struct frhdr {int dummy; } ;
struct frad_local {int type; int buffer; short* dlci; struct net_device** master; } ;
struct dlci_local {int (* receive ) (struct sk_buff*,struct net_device*) ;} ;
struct buf_info {int buf_top; int buf_base; int rse_num; int rse_base; } ;
struct buf_entry {int opp_flag; short dlci; short length; int buf_addr; } ;


 int CONFIG_DLCI_MAX ;
 int SDLA_502_DATA_OFS ;
 int SDLA_502_RCV_BUF ;
 int SDLA_508_RXBUF_INFO ;
 int SDLA_ADDR_MASK ;



 int SDLA_WINDOW (struct net_device*,int) ;
 int __sdla_read (struct net_device*,int,int ,short) ;
 struct sk_buff* dev_alloc_skb (short) ;
 int netdev_notice (struct net_device*,char*,...) ;
 void* netdev_priv (struct net_device*) ;
 int sdla_lock ;
 int skb_put (struct sk_buff*,short) ;
 int skb_reserve (struct sk_buff*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct sk_buff*,struct net_device*) ;

__attribute__((used)) static void sdla_receive(struct net_device *dev)
{
 struct net_device *master;
 struct frad_local *flp;
 struct dlci_local *dlp;
 struct sk_buff *skb;

 struct sdla_cmd *cmd;
 struct buf_info *pbufi;
 struct buf_entry *pbuf;

 unsigned long flags;
 int i=0, received, success, addr, buf_base, buf_top;
 short dlci, len, len2, split;

 flp = netdev_priv(dev);
 success = 1;
 received = addr = buf_top = buf_base = 0;
 len = dlci = 0;
 skb = ((void*)0);
 master = ((void*)0);
 cmd = ((void*)0);
 pbufi = ((void*)0);
 pbuf = ((void*)0);

 spin_lock_irqsave(&sdla_lock, flags);

 switch (flp->type)
 {
  case 130:
  case 129:
   cmd = (void *) (dev->mem_start + (SDLA_502_RCV_BUF & SDLA_ADDR_MASK));
   SDLA_WINDOW(dev, SDLA_502_RCV_BUF);
   success = cmd->opp_flag;
   if (!success)
    break;

   dlci = cmd->dlci;
   len = cmd->length;
   break;

  case 128:
   pbufi = (void *) (dev->mem_start + (SDLA_508_RXBUF_INFO & SDLA_ADDR_MASK));
   SDLA_WINDOW(dev, SDLA_508_RXBUF_INFO);
   pbuf = (void *) (dev->mem_start + ((pbufi->rse_base + flp->buffer * sizeof(struct buf_entry)) & SDLA_ADDR_MASK));
   success = pbuf->opp_flag;
   if (!success)
    break;

   buf_top = pbufi->buf_top;
   buf_base = pbufi->buf_base;
   dlci = pbuf->dlci;
   len = pbuf->length;
   addr = pbuf->buf_addr;
   break;
 }


 if (success)
 {
  for (i=0;i<CONFIG_DLCI_MAX;i++)
   if (flp->dlci[i] == dlci)
    break;

  if (i == CONFIG_DLCI_MAX)
  {
   netdev_notice(dev, "Received packet from invalid DLCI %i, ignoring\n",
          dlci);
   dev->stats.rx_errors++;
   success = 0;
  }
 }

 if (success)
 {
  master = flp->master[i];
  skb = dev_alloc_skb(len + sizeof(struct frhdr));
  if (skb == ((void*)0))
  {
   netdev_notice(dev, "Memory squeeze, dropping packet\n");
   dev->stats.rx_dropped++;
   success = 0;
  }
  else
   skb_reserve(skb, sizeof(struct frhdr));
 }


 switch (flp->type)
 {
  case 130:
  case 129:
   if (success)
    __sdla_read(dev, SDLA_502_RCV_BUF + SDLA_502_DATA_OFS, skb_put(skb,len), len);

   SDLA_WINDOW(dev, SDLA_502_RCV_BUF);
   cmd->opp_flag = 0;
   break;

  case 128:
   if (success)
   {

    split = addr + len > buf_top + 1 ? len - (buf_top - addr + 1) : 0;
    len2 = len - split;

    __sdla_read(dev, addr, skb_put(skb, len2), len2);
    if (split)
     __sdla_read(dev, buf_base, skb_put(skb, split), split);
   }


   SDLA_WINDOW(dev, SDLA_508_RXBUF_INFO);
   flp->buffer = (flp->buffer + 1) % pbufi->rse_num;
   pbuf->opp_flag = 0;
   break;
 }

 if (success)
 {
  dev->stats.rx_packets++;
  dlp = netdev_priv(master);
  (*dlp->receive)(skb, master);
 }

 spin_unlock_irqrestore(&sdla_lock, flags);
}
