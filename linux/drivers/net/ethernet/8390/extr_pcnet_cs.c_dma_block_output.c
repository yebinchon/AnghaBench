
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_long ;
typedef int u_char ;
struct pcnet_dev {int flags; } ;
struct net_device {unsigned int base_addr; } ;
struct ei_device {int dummy; } ;
struct TYPE_2__ {int dmaing; int irqlock; } ;


 int DELAY_OUTPUT ;
 int const E8390_NODMA ;
 int const E8390_PAGE0 ;
 int const E8390_RWRITE ;
 int const E8390_START ;
 scalar_t__ EN0_ISR ;
 scalar_t__ EN0_RCNTHI ;
 scalar_t__ EN0_RCNTLO ;
 scalar_t__ EN0_RSARHI ;
 scalar_t__ EN0_RSARLO ;
 int const ENISR_RDC ;
 int NS8390_init (struct net_device*,int) ;
 scalar_t__ PCNET_CMD ;
 scalar_t__ PCNET_DATAPORT ;
 scalar_t__ PCNET_RDC_TIMEOUT ;
 struct pcnet_dev* PRIV (struct net_device*) ;
 scalar_t__ delay_time ;
 TYPE_1__ ei_status ;
 int const inb_p (scalar_t__) ;
 scalar_t__ jiffies ;
 int netdev_err (struct net_device*,char*,int,int ) ;
 int netdev_notice (struct net_device*,char*,int const,int) ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int netdev_warn (struct net_device*,char*) ;
 int netif_dbg (struct ei_device*,int ,struct net_device*,char*,int) ;
 scalar_t__ netif_msg_tx_queued (struct ei_device*) ;
 int outb_p (int const,scalar_t__) ;
 int outsw (scalar_t__,int const*,int) ;
 int pcnet_reset_8390 (struct net_device*) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;
 int tx_queued ;
 int udelay (long) ;

__attribute__((used)) static void dma_block_output(struct net_device *dev, int count,
        const u_char *buf, const int start_page)
{
    unsigned int nic_base = dev->base_addr;
    struct pcnet_dev *info = PRIV(dev);




    u_long dma_start;
    if (count & 0x01)
 count++;
    if (ei_status.dmaing) {
 netdev_err(dev, "DMAing conflict in dma_block_output."
     "[DMAstat:%1x][irqlock:%1x]\n",
     ei_status.dmaing, ei_status.irqlock);
 return;
    }
    ei_status.dmaing |= 0x01;

    outb_p(E8390_PAGE0+E8390_START+E8390_NODMA, nic_base+PCNET_CMD);





    outb_p(ENISR_RDC, nic_base + EN0_ISR);


    outb_p(count & 0xff, nic_base + EN0_RCNTLO);
    outb_p(count >> 8, nic_base + EN0_RCNTHI);
    outb_p(0x00, nic_base + EN0_RSARLO);
    outb_p(start_page, nic_base + EN0_RSARHI);

    outb_p(E8390_RWRITE+E8390_START, nic_base + PCNET_CMD);
    outsw(nic_base + PCNET_DATAPORT, buf, count>>1);

    dma_start = jiffies;
    while ((inb_p(nic_base + EN0_ISR) & ENISR_RDC) == 0)
 if (time_after(jiffies, dma_start + PCNET_RDC_TIMEOUT)) {
  netdev_warn(dev, "timeout waiting for Tx RDC.\n");
  pcnet_reset_8390(dev);
  NS8390_init(dev, 1);
  break;
 }

    outb_p(ENISR_RDC, nic_base + EN0_ISR);
    if (info->flags & DELAY_OUTPUT)
 udelay((long)delay_time);
    ei_status.dmaing &= ~0x01;
}
