
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {long base_addr; } ;
struct e8390_pkt_hdr {int count; } ;
struct TYPE_2__ {int dmaing; int ne2k_flags; int irqlock; } ;


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
 scalar_t__ NE_BASE ;
 scalar_t__ NE_CMD ;
 scalar_t__ NE_DATAPORT ;
 int ONLY_16BIT_IO ;
 TYPE_1__ ei_status ;
 int inl (scalar_t__) ;
 int insw (scalar_t__,struct e8390_pkt_hdr*,int) ;
 int le16_to_cpus (int *) ;
 int le32_to_cpu (int ) ;
 int netdev_err (struct net_device*,char*,int,int ) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void ne2k_pci_get_8390_hdr(struct net_device *dev, struct e8390_pkt_hdr *hdr, int ring_page)
{

 long nic_base = dev->base_addr;


 if (ei_status.dmaing) {
  netdev_err(dev, "DMAing conflict in ne2k_pci_get_8390_hdr "
      "[DMAstat:%d][irqlock:%d].\n",
      ei_status.dmaing, ei_status.irqlock);
  return;
 }

 ei_status.dmaing |= 0x01;
 outb(E8390_NODMA+E8390_PAGE0+E8390_START, nic_base+ NE_CMD);
 outb(sizeof(struct e8390_pkt_hdr), nic_base + EN0_RCNTLO);
 outb(0, nic_base + EN0_RCNTHI);
 outb(0, nic_base + EN0_RSARLO);
 outb(ring_page, nic_base + EN0_RSARHI);
 outb(E8390_RREAD+E8390_START, nic_base + NE_CMD);

 if (ei_status.ne2k_flags & ONLY_16BIT_IO) {
  insw(NE_BASE + NE_DATAPORT, hdr, sizeof(struct e8390_pkt_hdr)>>1);
 } else {
  *(u32*)hdr = le32_to_cpu(inl(NE_BASE + NE_DATAPORT));
  le16_to_cpus(&hdr->count);
 }

 outb(ENISR_RDC, nic_base + EN0_ISR);
 ei_status.dmaing &= ~0x01;
}
