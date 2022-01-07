
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {char* data; } ;
struct net_device {long base_addr; } ;
typedef int __le16 ;
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
 int ONLY_32BIT_IO ;
 int cpu_to_le16 (int ) ;
 TYPE_1__ ei_status ;
 char inb (scalar_t__) ;
 int insl (scalar_t__,char*,int) ;
 int insw (scalar_t__,char*,int) ;
 int inw (scalar_t__) ;
 int netdev_err (struct net_device*,char*,int,int ) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void ne2k_pci_block_input(struct net_device *dev, int count,
     struct sk_buff *skb, int ring_offset)
{
 long nic_base = dev->base_addr;
 char *buf = skb->data;


 if (ei_status.dmaing) {
  netdev_err(dev, "DMAing conflict in ne2k_pci_block_input "
      "[DMAstat:%d][irqlock:%d].\n",
      ei_status.dmaing, ei_status.irqlock);
  return;
 }
 ei_status.dmaing |= 0x01;
 if (ei_status.ne2k_flags & ONLY_32BIT_IO)
  count = (count + 3) & 0xFFFC;
 outb(E8390_NODMA+E8390_PAGE0+E8390_START, nic_base+ NE_CMD);
 outb(count & 0xff, nic_base + EN0_RCNTLO);
 outb(count >> 8, nic_base + EN0_RCNTHI);
 outb(ring_offset & 0xff, nic_base + EN0_RSARLO);
 outb(ring_offset >> 8, nic_base + EN0_RSARHI);
 outb(E8390_RREAD+E8390_START, nic_base + NE_CMD);

 if (ei_status.ne2k_flags & ONLY_16BIT_IO) {
  insw(NE_BASE + NE_DATAPORT,buf,count>>1);
  if (count & 0x01) {
   buf[count-1] = inb(NE_BASE + NE_DATAPORT);
  }
 } else {
  insl(NE_BASE + NE_DATAPORT, buf, count>>2);
  if (count & 3) {
   buf += count & ~3;
   if (count & 2) {
    __le16 *b = (__le16 *)buf;

    *b++ = cpu_to_le16(inw(NE_BASE + NE_DATAPORT));
    buf = (char *)b;
   }
   if (count & 1)
    *buf = inb(NE_BASE + NE_DATAPORT);
  }
 }

 outb(ENISR_RDC, nic_base + EN0_ISR);
 ei_status.dmaing &= ~0x01;
}
