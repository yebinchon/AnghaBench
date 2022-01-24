#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {char* data; } ;
struct net_device {unsigned int base_addr; } ;
struct ei_device {int dummy; } ;
struct TYPE_2__ {int dmaing; int /*<<< orphan*/  irqlock; } ;

/* Variables and functions */
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
 char FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*,int,int) ; 
 struct ei_device* FUNC6 (struct net_device*) ; 
 scalar_t__ FUNC7 (struct ei_device*) ; 
 int /*<<< orphan*/  FUNC8 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC9(struct net_device *dev, int count,
			    struct sk_buff *skb, int ring_offset)
{
    unsigned int nic_base = dev->base_addr;
    int xfer_count = count;
    char *buf = skb->data;
    struct ei_device *ei_local = FUNC6(dev);

    if ((FUNC7(ei_local)) && (count != 4))
	FUNC3(dev, "[bi=%d]\n", count+4);
    if (ei_status.dmaing) {
	FUNC4(dev, "DMAing conflict in dma_block_input."
		   "[DMAstat:%1x][irqlock:%1x]\n",
		   ei_status.dmaing, ei_status.irqlock);
	return;
    }
    ei_status.dmaing |= 0x01;
    FUNC8(E8390_NODMA+E8390_PAGE0+E8390_START, nic_base + PCNET_CMD);
    FUNC8(count & 0xff, nic_base + EN0_RCNTLO);
    FUNC8(count >> 8, nic_base + EN0_RCNTHI);
    FUNC8(ring_offset & 0xff, nic_base + EN0_RSARLO);
    FUNC8(ring_offset >> 8, nic_base + EN0_RSARHI);
    FUNC8(E8390_RREAD+E8390_START, nic_base + PCNET_CMD);

    FUNC2(nic_base + PCNET_DATAPORT,buf,count>>1);
    if (count & 0x01)
	buf[count-1] = FUNC0(nic_base + PCNET_DATAPORT), xfer_count++;

    /* This was for the ALPHA version only, but enough people have been
       encountering problems that it is still here. */
#ifdef PCMCIA_DEBUG
      /* DMA termination address check... */
    if (netif_msg_rx_status(ei_local)) {
	int addr, tries = 20;
	do {
	    /* DON'T check for 'inb_p(EN0_ISR) & ENISR_RDC' here
	       -- it's broken for Rx on some cards! */
	    int high = inb_p(nic_base + EN0_RSARHI);
	    int low = inb_p(nic_base + EN0_RSARLO);
	    addr = (high << 8) + low;
	    if (((ring_offset + xfer_count) & 0xff) == (addr & 0xff))
		break;
	} while (--tries > 0);
	if (tries <= 0)
	    netdev_notice(dev, "RX transfer address mismatch,"
			  "%#4.4x (expected) vs. %#4.4x (actual).\n",
			  ring_offset + xfer_count, addr);
    }
#endif
    FUNC8(ENISR_RDC, nic_base + EN0_ISR);	/* Ack intr. */
    ei_status.dmaing &= ~0x01;
}