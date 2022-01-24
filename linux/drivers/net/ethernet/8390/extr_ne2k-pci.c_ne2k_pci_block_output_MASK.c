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
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int ne2k_flags; int dmaing; int /*<<< orphan*/  irqlock; } ;

/* Variables and functions */
 int const E8390_NODMA ; 
 int const E8390_PAGE0 ; 
 int const E8390_RREAD ; 
 int const E8390_RWRITE ; 
 int const E8390_START ; 
 scalar_t__ EN0_ISR ; 
 scalar_t__ EN0_RCNTHI ; 
 scalar_t__ EN0_RCNTLO ; 
 scalar_t__ EN0_RSARHI ; 
 scalar_t__ EN0_RSARLO ; 
 int const ENISR_RDC ; 
 long NE_BASE ; 
 scalar_t__ NE_CMD ; 
 scalar_t__ NE_DATAPORT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 int ONLY_16BIT_IO ; 
 int ONLY_32BIT_IO ; 
 TYPE_1__ ei_status ; 
 int const FUNC1 (scalar_t__) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct net_device *dev, int count,
				  const unsigned char *buf, const int start_page)
{
	long nic_base = NE_BASE;
	unsigned long dma_start;

	/* On little-endian it's always safe to round the count up for
	   word writes. */
	if (ei_status.ne2k_flags & ONLY_32BIT_IO)
		count = (count + 3) & 0xFFFC;
	else
		if (count & 0x01)
			count++;

	/* This *shouldn't* happen. If it does, it's the last thing you'll see */
	if (ei_status.dmaing) {
		FUNC4(dev, "DMAing conflict in ne2k_pci_block_output."
			   "[DMAstat:%d][irqlock:%d]\n",
			   ei_status.dmaing, ei_status.irqlock);
		return;
	}
	ei_status.dmaing |= 0x01;
	/* We should already be in page 0, but to be safe... */
	FUNC6(E8390_PAGE0+E8390_START+E8390_NODMA, nic_base + NE_CMD);

#ifdef NE8390_RW_BUGFIX
	/* Handle the read-before-write bug the same way as the
	   Crynwr packet driver -- the NatSemi method doesn't work.
	   Actually this doesn't always work either, but if you have
	   problems with your NEx000 this is better than nothing! */
	outb(0x42, nic_base + EN0_RCNTLO);
	outb(0x00, nic_base + EN0_RCNTHI);
	outb(0x42, nic_base + EN0_RSARLO);
	outb(0x00, nic_base + EN0_RSARHI);
	outb(E8390_RREAD+E8390_START, nic_base + NE_CMD);
#endif
	FUNC6(ENISR_RDC, nic_base + EN0_ISR);

   /* Now the normal output. */
	FUNC6(count & 0xff, nic_base + EN0_RCNTLO);
	FUNC6(count >> 8,   nic_base + EN0_RCNTHI);
	FUNC6(0x00, nic_base + EN0_RSARLO);
	FUNC6(start_page, nic_base + EN0_RSARHI);
	FUNC6(E8390_RWRITE+E8390_START, nic_base + NE_CMD);
	if (ei_status.ne2k_flags & ONLY_16BIT_IO) {
		FUNC8(NE_BASE + NE_DATAPORT, buf, count>>1);
	} else {
		FUNC7(NE_BASE + NE_DATAPORT, buf, count>>2);
		if (count & 3) {
			buf += count & ~3;
			if (count & 2) {
				__le16 *b = (__le16 *)buf;

				FUNC9(FUNC2(*b++), NE_BASE + NE_DATAPORT);
				buf = (char *)b;
			}
		}
	}

	dma_start = jiffies;

	while ((FUNC1(nic_base + EN0_ISR) & ENISR_RDC) == 0)
		if (jiffies - dma_start > 2) {			/* Avoid clock roll-over. */
			FUNC5(dev, "timeout waiting for Tx RDC.\n");
			FUNC3(dev);
			FUNC0(dev,1);
			break;
		}

	FUNC6(ENISR_RDC, nic_base + EN0_ISR);	/* Ack intr. */
	ei_status.dmaing &= ~0x01;
}