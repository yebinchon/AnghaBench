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
typedef  int u32 ;
struct b43legacy_wldev {int irq_mask; int* dma_reason; int irq_reason; TYPE_1__* wl; int /*<<< orphan*/  isr_tasklet; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  irq_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  B43legacy_MMIO_DMA0_REASON ; 
 int /*<<< orphan*/  B43legacy_MMIO_DMA1_REASON ; 
 int /*<<< orphan*/  B43legacy_MMIO_DMA2_REASON ; 
 int /*<<< orphan*/  B43legacy_MMIO_DMA3_REASON ; 
 int /*<<< orphan*/  B43legacy_MMIO_DMA4_REASON ; 
 int /*<<< orphan*/  B43legacy_MMIO_DMA5_REASON ; 
 int /*<<< orphan*/  B43legacy_MMIO_GEN_IRQ_MASK ; 
 int /*<<< orphan*/  B43legacy_MMIO_GEN_IRQ_REASON ; 
 scalar_t__ B43legacy_STAT_STARTED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*,int) ; 
 int FUNC2 (struct b43legacy_wldev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct b43legacy_wldev*) ; 
 int /*<<< orphan*/  FUNC4 (struct b43legacy_wldev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	irqreturn_t ret = IRQ_NONE;
	struct b43legacy_wldev *dev = dev_id;
	u32 reason;

	FUNC0(!dev);

	FUNC5(&dev->wl->irq_lock);

	if (FUNC8(FUNC3(dev) < B43legacy_STAT_STARTED))
		/* This can only happen on shared IRQ lines. */
		goto out;
	reason = FUNC2(dev, B43legacy_MMIO_GEN_IRQ_REASON);
	if (reason == 0xffffffff) /* shared IRQ */
		goto out;
	ret = IRQ_HANDLED;
	reason &= dev->irq_mask;
	if (!reason)
		goto out;

	dev->dma_reason[0] = FUNC2(dev,
					      B43legacy_MMIO_DMA0_REASON)
					      & 0x0001DC00;
	dev->dma_reason[1] = FUNC2(dev,
					      B43legacy_MMIO_DMA1_REASON)
					      & 0x0000DC00;
	dev->dma_reason[2] = FUNC2(dev,
					      B43legacy_MMIO_DMA2_REASON)
					      & 0x0000DC00;
	dev->dma_reason[3] = FUNC2(dev,
					      B43legacy_MMIO_DMA3_REASON)
					      & 0x0001DC00;
	dev->dma_reason[4] = FUNC2(dev,
					      B43legacy_MMIO_DMA4_REASON)
					      & 0x0000DC00;
	dev->dma_reason[5] = FUNC2(dev,
					      B43legacy_MMIO_DMA5_REASON)
					      & 0x0000DC00;

	FUNC1(dev, reason);
	/* Disable all IRQs. They are enabled again in the bottom half. */
	FUNC4(dev, B43legacy_MMIO_GEN_IRQ_MASK, 0);
	/* Save the reason code and call our bottom half. */
	dev->irq_reason = reason;
	FUNC7(&dev->isr_tasklet);
out:
	FUNC6(&dev->wl->irq_lock);

	return ret;
}