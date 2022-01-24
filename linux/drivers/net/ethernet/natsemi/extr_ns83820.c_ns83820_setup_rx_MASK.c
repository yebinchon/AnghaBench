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
struct TYPE_2__ {int idle; int phy_descs; int up; int /*<<< orphan*/  lock; scalar_t__ next_empty; int /*<<< orphan*/  descs; int /*<<< orphan*/  next_rx_desc; scalar_t__ next_rx; } ;
struct ns83820 {int IMR_cache; TYPE_1__ rx_info; int /*<<< orphan*/  misc_lock; scalar_t__ base; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CCSR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ IER ; 
 scalar_t__ IMR ; 
 int ISR_PHY ; 
 int ISR_RXDESC ; 
 int ISR_RXIDLE ; 
 int ISR_RXORN ; 
 int ISR_RXRCMP ; 
 int ISR_RXSOVR ; 
 int ISR_TXDESC ; 
 int ISR_TXIDLE ; 
 unsigned int NR_RX_DESC ; 
 struct ns83820* FUNC0 (struct net_device*) ; 
 scalar_t__ RFCR ; 
 scalar_t__ RXDP ; 
 scalar_t__ RXDP_HI ; 
 int /*<<< orphan*/  FUNC1 (struct ns83820*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct net_device *ndev)
{
	struct ns83820 *dev = FUNC0(ndev);
	unsigned i;
	int ret;

	FUNC2("ns83820_setup_rx(%p)\n", ndev);

	dev->rx_info.idle = 1;
	dev->rx_info.next_rx = 0;
	dev->rx_info.next_rx_desc = dev->rx_info.descs;
	dev->rx_info.next_empty = 0;

	for (i=0; i<NR_RX_DESC; i++)
		FUNC1(dev, i);

	FUNC10(0, dev->base + RXDP_HI);
	FUNC10(dev->rx_info.phy_descs, dev->base + RXDP);

	ret = FUNC5(ndev, GFP_KERNEL);
	if (!ret) {
		FUNC2("starting receiver\n");
		/* prevent the interrupt handler from stomping on us */
		FUNC7(&dev->rx_info.lock);

		FUNC10(0x0001, dev->base + CCSR);
		FUNC10(0, dev->base + RFCR);
		FUNC10(0x7fc00000, dev->base + RFCR);
		FUNC10(0xffc00000, dev->base + RFCR);

		dev->rx_info.up = 1;

		FUNC4(ndev);

		/* Okay, let it rip */
		FUNC6(&dev->misc_lock);
		dev->IMR_cache |= ISR_PHY;
		dev->IMR_cache |= ISR_RXRCMP;
		//dev->IMR_cache |= ISR_RXERR;
		//dev->IMR_cache |= ISR_RXOK;
		dev->IMR_cache |= ISR_RXORN;
		dev->IMR_cache |= ISR_RXSOVR;
		dev->IMR_cache |= ISR_RXDESC;
		dev->IMR_cache |= ISR_RXIDLE;
		dev->IMR_cache |= ISR_TXDESC;
		dev->IMR_cache |= ISR_TXIDLE;

		FUNC10(dev->IMR_cache, dev->base + IMR);
		FUNC10(1, dev->base + IER);
		FUNC8(&dev->misc_lock);

		FUNC3(ndev);

		FUNC9(&dev->rx_info.lock);
	}
	return ret;
}