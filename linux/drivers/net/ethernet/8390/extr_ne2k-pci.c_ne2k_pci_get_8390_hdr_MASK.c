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
typedef  int /*<<< orphan*/  u32 ;
struct net_device {long base_addr; } ;
struct e8390_pkt_hdr {int /*<<< orphan*/  count; } ;
struct TYPE_2__ {int dmaing; int ne2k_flags; int /*<<< orphan*/  irqlock; } ;

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
 scalar_t__ NE_BASE ; 
 scalar_t__ NE_CMD ; 
 scalar_t__ NE_DATAPORT ; 
 int ONLY_16BIT_IO ; 
 TYPE_1__ ei_status ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct e8390_pkt_hdr*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev, struct e8390_pkt_hdr *hdr, int ring_page)
{

	long nic_base = dev->base_addr;

	/* This *shouldn't* happen. If it does, it's the last thing you'll see */
	if (ei_status.dmaing) {
		FUNC4(dev, "DMAing conflict in ne2k_pci_get_8390_hdr "
			   "[DMAstat:%d][irqlock:%d].\n",
			   ei_status.dmaing, ei_status.irqlock);
		return;
	}

	ei_status.dmaing |= 0x01;
	FUNC5(E8390_NODMA+E8390_PAGE0+E8390_START, nic_base+ NE_CMD);
	FUNC5(sizeof(struct e8390_pkt_hdr), nic_base + EN0_RCNTLO);
	FUNC5(0, nic_base + EN0_RCNTHI);
	FUNC5(0, nic_base + EN0_RSARLO);		/* On page boundary */
	FUNC5(ring_page, nic_base + EN0_RSARHI);
	FUNC5(E8390_RREAD+E8390_START, nic_base + NE_CMD);

	if (ei_status.ne2k_flags & ONLY_16BIT_IO) {
		FUNC1(NE_BASE + NE_DATAPORT, hdr, sizeof(struct e8390_pkt_hdr)>>1);
	} else {
		*(u32*)hdr = FUNC3(FUNC0(NE_BASE + NE_DATAPORT));
		FUNC2(&hdr->count);
	}

	FUNC5(ENISR_RDC, nic_base + EN0_ISR);	/* Ack intr. */
	ei_status.dmaing &= ~0x01;
}