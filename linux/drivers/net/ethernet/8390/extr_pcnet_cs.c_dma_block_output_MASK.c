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
typedef  scalar_t__ u_long ;
typedef  int /*<<< orphan*/  u_char ;
struct pcnet_dev {int flags; } ;
struct net_device {unsigned int base_addr; } ;
struct ei_device {int dummy; } ;
struct TYPE_2__ {int dmaing; int /*<<< orphan*/  irqlock; } ;

/* Variables and functions */
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
 int /*<<< orphan*/  FUNC0 (struct net_device*,int) ; 
 scalar_t__ PCNET_CMD ; 
 scalar_t__ PCNET_DATAPORT ; 
 scalar_t__ PCNET_RDC_TIMEOUT ; 
 struct pcnet_dev* FUNC1 (struct net_device*) ; 
 scalar_t__ delay_time ; 
 TYPE_1__ ei_status ; 
 int const FUNC2 (scalar_t__) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,int const,int) ; 
 struct ei_device* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct ei_device*,int /*<<< orphan*/ ,struct net_device*,char*,int) ; 
 scalar_t__ FUNC8 (struct ei_device*) ; 
 int /*<<< orphan*/  FUNC9 (int const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  tx_queued ; 
 int /*<<< orphan*/  FUNC13 (long) ; 

__attribute__((used)) static void FUNC14(struct net_device *dev, int count,
			     const u_char *buf, const int start_page)
{
    unsigned int nic_base = dev->base_addr;
    struct pcnet_dev *info = FUNC1(dev);
#ifdef PCMCIA_DEBUG
    int retries = 0;
    struct ei_device *ei_local = netdev_priv(dev);
#endif
    u_long dma_start;

#ifdef PCMCIA_DEBUG
    netif_dbg(ei_local, tx_queued, dev, "[bo=%d]\n", count);
#endif

    /* Round the count up for word writes.  Do we need to do this?
       What effect will an odd byte count have on the 8390?
       I should check someday. */
    if (count & 0x01)
	count++;
    if (ei_status.dmaing) {
	FUNC3(dev, "DMAing conflict in dma_block_output."
		   "[DMAstat:%1x][irqlock:%1x]\n",
		   ei_status.dmaing, ei_status.irqlock);
	return;
    }
    ei_status.dmaing |= 0x01;
    /* We should already be in page 0, but to be safe... */
    FUNC9(E8390_PAGE0+E8390_START+E8390_NODMA, nic_base+PCNET_CMD);

#ifdef PCMCIA_DEBUG
  retry:
#endif

    FUNC9(ENISR_RDC, nic_base + EN0_ISR);

    /* Now the normal output. */
    FUNC9(count & 0xff, nic_base + EN0_RCNTLO);
    FUNC9(count >> 8,   nic_base + EN0_RCNTHI);
    FUNC9(0x00, nic_base + EN0_RSARLO);
    FUNC9(start_page, nic_base + EN0_RSARHI);

    FUNC9(E8390_RWRITE+E8390_START, nic_base + PCNET_CMD);
    FUNC10(nic_base + PCNET_DATAPORT, buf, count>>1);

    dma_start = jiffies;

#ifdef PCMCIA_DEBUG
    /* This was for the ALPHA version only, but enough people have been
       encountering problems that it is still here. */
    /* DMA termination address check... */
    if (netif_msg_tx_queued(ei_local)) {
	int addr, tries = 20;
	do {
	    int high = inb_p(nic_base + EN0_RSARHI);
	    int low = inb_p(nic_base + EN0_RSARLO);
	    addr = (high << 8) + low;
	    if ((start_page << 8) + count == addr)
		break;
	} while (--tries > 0);
	if (tries <= 0) {
	    netdev_notice(dev, "Tx packet transfer address mismatch,"
			  "%#4.4x (expected) vs. %#4.4x (actual).\n",
			  (start_page << 8) + count, addr);
	    if (retries++ == 0)
		goto retry;
	}
    }
#endif

    while ((FUNC2(nic_base + EN0_ISR) & ENISR_RDC) == 0)
	if (FUNC12(jiffies, dma_start + PCNET_RDC_TIMEOUT)) {
		FUNC6(dev, "timeout waiting for Tx RDC.\n");
		FUNC11(dev);
		FUNC0(dev, 1);
		break;
	}

    FUNC9(ENISR_RDC, nic_base + EN0_ISR);	/* Ack intr. */
    if (info->flags & DELAY_OUTPUT)
	FUNC13((long)delay_time);
    ei_status.dmaing &= ~0x01;
}