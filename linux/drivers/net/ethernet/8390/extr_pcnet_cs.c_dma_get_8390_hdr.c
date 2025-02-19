
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {unsigned int base_addr; } ;
struct e8390_pkt_hdr {int count; } ;
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
 int insw (scalar_t__,struct e8390_pkt_hdr*,int) ;
 int le16_to_cpu (int ) ;
 int netdev_err (struct net_device*,char*,int,int ) ;
 int outb_p (int,scalar_t__) ;

__attribute__((used)) static void dma_get_8390_hdr(struct net_device *dev,
        struct e8390_pkt_hdr *hdr,
        int ring_page)
{
    unsigned int nic_base = dev->base_addr;

    if (ei_status.dmaing) {
 netdev_err(dev, "DMAing conflict in dma_block_input."
     "[DMAstat:%1x][irqlock:%1x]\n",
     ei_status.dmaing, ei_status.irqlock);
 return;
    }

    ei_status.dmaing |= 0x01;
    outb_p(E8390_NODMA+E8390_PAGE0+E8390_START, nic_base + PCNET_CMD);
    outb_p(sizeof(struct e8390_pkt_hdr), nic_base + EN0_RCNTLO);
    outb_p(0, nic_base + EN0_RCNTHI);
    outb_p(0, nic_base + EN0_RSARLO);
    outb_p(ring_page, nic_base + EN0_RSARHI);
    outb_p(E8390_RREAD+E8390_START, nic_base + PCNET_CMD);

    insw(nic_base + PCNET_DATAPORT, hdr,
     sizeof(struct e8390_pkt_hdr)>>1);

    hdr->count = le16_to_cpu(hdr->count);

    outb_p(ENISR_RDC, nic_base + EN0_ISR);
    ei_status.dmaing &= ~0x01;
}
