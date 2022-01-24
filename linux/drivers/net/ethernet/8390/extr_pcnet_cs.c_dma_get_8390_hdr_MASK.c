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
struct net_device {unsigned int base_addr; } ;
struct e8390_pkt_hdr {int /*<<< orphan*/  count; } ;
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
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct e8390_pkt_hdr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev,
			     struct e8390_pkt_hdr *hdr,
			     int ring_page)
{
    unsigned int nic_base = dev->base_addr;

    if (ei_status.dmaing) {
	FUNC2(dev, "DMAing conflict in dma_block_input."
		   "[DMAstat:%1x][irqlock:%1x]\n",
		   ei_status.dmaing, ei_status.irqlock);
	return;
    }

    ei_status.dmaing |= 0x01;
    FUNC3(E8390_NODMA+E8390_PAGE0+E8390_START, nic_base + PCNET_CMD);
    FUNC3(sizeof(struct e8390_pkt_hdr), nic_base + EN0_RCNTLO);
    FUNC3(0, nic_base + EN0_RCNTHI);
    FUNC3(0, nic_base + EN0_RSARLO);		/* On page boundary */
    FUNC3(ring_page, nic_base + EN0_RSARHI);
    FUNC3(E8390_RREAD+E8390_START, nic_base + PCNET_CMD);

    FUNC0(nic_base + PCNET_DATAPORT, hdr,
	    sizeof(struct e8390_pkt_hdr)>>1);
    /* Fix for big endian systems */
    hdr->count = FUNC1(hdr->count);

    FUNC3(ENISR_RDC, nic_base + EN0_ISR);	/* Ack intr. */
    ei_status.dmaing &= ~0x01;
}