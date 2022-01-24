#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct TYPE_4__ {struct sk_buff** skbs; scalar_t__ up; } ;
struct ns83820 {int IMR_cache; TYPE_2__ rx_info; scalar_t__ base; TYPE_1__* pci_dev; int /*<<< orphan*/  misc_lock; } ;
struct TYPE_3__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 scalar_t__ IMR ; 
 int ISR_RXDESC ; 
 int ISR_RXEARLY ; 
 int ISR_RXERR ; 
 int ISR_RXIDLE ; 
 int ISR_RXOK ; 
 unsigned int NR_RX_DESC ; 
 scalar_t__ RXDP ; 
 scalar_t__ RXDP_HI ; 
 int /*<<< orphan*/  FUNC0 (struct ns83820*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ns83820*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct ns83820 *dev)
{
	unsigned i;
	unsigned long flags;

	FUNC1("ns83820_cleanup_rx(%p)\n", dev);

	/* disable receive interrupts */
	FUNC4(&dev->misc_lock, flags);
	dev->IMR_cache &= ~(ISR_RXOK | ISR_RXDESC | ISR_RXERR | ISR_RXEARLY | ISR_RXIDLE);
	FUNC7(dev->IMR_cache, dev->base + IMR);
	FUNC5(&dev->misc_lock, flags);

	/* synchronize with the interrupt handler and kill it */
	dev->rx_info.up = 0;
	FUNC6(dev->pci_dev->irq);

	/* touch the pci bus... */
	FUNC3(dev->base + IMR);

	/* assumes the transmitter is already disabled and reset */
	FUNC7(0, dev->base + RXDP_HI);
	FUNC7(0, dev->base + RXDP);

	for (i=0; i<NR_RX_DESC; i++) {
		struct sk_buff *skb = dev->rx_info.skbs[i];
		dev->rx_info.skbs[i] = NULL;
		FUNC0(dev, i);
		FUNC2(skb);
	}
}