#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int ;
struct net_device {int base_addr; int /*<<< orphan*/  name; } ;
struct TYPE_6__ {int* pdl; TYPE_2__* skb; } ;
typedef  TYPE_1__ hp100_ring_t ;
struct TYPE_7__ {scalar_t__ data; } ;

/* Variables and functions */
 int MAX_ETHER_SIZE ; 
 int /*<<< orphan*/  TRACE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 
 scalar_t__ FUNC6 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int) ; 

__attribute__((used)) static int FUNC8(hp100_ring_t * ringptr,
			      struct net_device *dev)
{
#ifdef HP100_DEBUG_B
	int ioaddr = dev->base_addr;
#endif
#ifdef HP100_DEBUG_BM
	u_int *p;
#endif

#ifdef HP100_DEBUG_B
	hp100_outw(0x4207, TRACE);
	printk("hp100: %s: build rx pdl\n", dev->name);
#endif

	/* Allocate skb buffer of maximum size */
	/* Note: This depends on the alloc_skb functions allocating more
	 * space than requested, i.e. aligning to 16bytes */

	ringptr->skb = FUNC1(dev, FUNC5(MAX_ETHER_SIZE + 2, 4));

	if (NULL != ringptr->skb) {
		/*
		 * Reserve 2 bytes at the head of the buffer to land the IP header
		 * on a long word boundary (According to the Network Driver section
		 * in the Linux KHG, this should help to increase performance.)
		 */
		FUNC7(ringptr->skb, 2);

		ringptr->skb->data = FUNC6(ringptr->skb, MAX_ETHER_SIZE);

		/* ringptr->pdl points to the beginning of the PDL, i.e. the PDH */
		/* Note: 1st Fragment is used for the 4 byte packet status
		 * (receive header). Its PDL entries are set up by init_rxpdl. So
		 * here we only have to set up the PDL fragment entries for the data
		 * part. Those 4 bytes will be stored in the DMA memory region
		 * directly before the PDL.
		 */
#ifdef HP100_DEBUG_BM
		printk("hp100: %s: build_rx_pdl: PDH@0x%x, skb->data (len %d) at 0x%x\n",
				     dev->name, (u_int) ringptr->pdl,
				     roundup(MAX_ETHER_SIZE + 2, 4),
				     (unsigned int) ringptr->skb->data);
#endif

		/* Conversion to new PCI API : map skbuf data to PCI bus.
		 * Doc says it's OK for EISA as well - Jean II */
		ringptr->pdl[0] = 0x00020000;	/* Write PDH */
		ringptr->pdl[3] = FUNC3(FUNC2(dev),
					       ringptr->skb->data);
		ringptr->pdl[4] = MAX_ETHER_SIZE;	/* Length of Data */

#ifdef HP100_DEBUG_BM
		for (p = (ringptr->pdl); p < (ringptr->pdl + 5); p++)
			printk("hp100: %s: Adr 0x%.8x = 0x%.8x\n", dev->name, (u_int) p, (u_int) * p);
#endif
		return 1;
	}
	/* else: */
	/* alloc_skb failed (no memory) -> still can receive the header
	 * fragment into PDL memory. make PDL safe by clearing msgptr and
	 * making the PDL only 1 fragment (i.e. the 4 byte packet status)
	 */
#ifdef HP100_DEBUG_BM
	printk("hp100: %s: build_rx_pdl: PDH@0x%x, No space for skb.\n", dev->name, (u_int) ringptr->pdl);
#endif

	ringptr->pdl[0] = 0x00010000;	/* PDH: Count=1 Fragment */

	return 0;
}