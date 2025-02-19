
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {char* data; } ;
struct net_device {unsigned int base_addr; } ;
struct ei_device {int dummy; } ;
struct TYPE_2__ {int dmaing; int irqlock; } ;


 int E8390_NODMA ;
 int E8390_PAGE0 ;
 int E8390_RREAD ;
 int E8390_START ;
 scalar_t__ EN0_ISR ;
 scalar_t__ EN0_RCNTHI ;
 scalar_t__ EN0_RCNTLO ;
 scalar_t__ EN0_RSARHI ;
 scalar_t__ EN0_RSARLO ;
 int ENISR_RDC ;
 scalar_t__ PCNET_CMD ;
 scalar_t__ PCNET_DATAPORT ;
 TYPE_1__ ei_status ;
 char inb (scalar_t__) ;
 int inb_p (scalar_t__) ;
 int insw (scalar_t__,char*,int) ;
 int netdev_dbg (struct net_device*,char*,int) ;
 int netdev_err (struct net_device*,char*,int,int ) ;
 int netdev_notice (struct net_device*,char*,int,int) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_rx_status (struct ei_device*) ;
 int outb_p (int,scalar_t__) ;

__attribute__((used)) static void dma_block_input(struct net_device *dev, int count,
       struct sk_buff *skb, int ring_offset)
{
    unsigned int nic_base = dev->base_addr;
    int xfer_count = count;
    char *buf = skb->data;
    struct ei_device *ei_local = netdev_priv(dev);

    if ((netif_msg_rx_status(ei_local)) && (count != 4))
 netdev_dbg(dev, "[bi=%d]\n", count+4);
    if (ei_status.dmaing) {
 netdev_err(dev, "DMAing conflict in dma_block_input."
     "[DMAstat:%1x][irqlock:%1x]\n",
     ei_status.dmaing, ei_status.irqlock);
 return;
    }
    ei_status.dmaing |= 0x01;
    outb_p(E8390_NODMA+E8390_PAGE0+E8390_START, nic_base + PCNET_CMD);
    outb_p(count & 0xff, nic_base + EN0_RCNTLO);
    outb_p(count >> 8, nic_base + EN0_RCNTHI);
    outb_p(ring_offset & 0xff, nic_base + EN0_RSARLO);
    outb_p(ring_offset >> 8, nic_base + EN0_RSARHI);
    outb_p(E8390_RREAD+E8390_START, nic_base + PCNET_CMD);

    insw(nic_base + PCNET_DATAPORT,buf,count>>1);
    if (count & 0x01)
 buf[count-1] = inb(nic_base + PCNET_DATAPORT), xfer_count++;
    outb_p(ENISR_RDC, nic_base + EN0_ISR);
    ei_status.dmaing &= ~0x01;
}
