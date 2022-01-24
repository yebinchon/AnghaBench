#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
struct r852_device {int card_detected; int card_unstable; int dma_stage; scalar_t__ dma_state; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  dma_done; int /*<<< orphan*/  card_detect_work; int /*<<< orphan*/  card_workqueue; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 scalar_t__ DMA_INTERNAL ; 
 scalar_t__ DMA_MEMORY ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int R852_CARD_IRQ_INSERT ; 
 int R852_CARD_IRQ_REMOVE ; 
 int /*<<< orphan*/  R852_CARD_IRQ_STA ; 
 int R852_CARD_STA_CD ; 
 int R852_DMA_IRQ_ERROR ; 
 int R852_DMA_IRQ_INTERNAL ; 
 int R852_DMA_IRQ_MASK ; 
 int R852_DMA_IRQ_MEMORY ; 
 int /*<<< orphan*/  R852_DMA_IRQ_STA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct r852_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct r852_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct r852_device*) ; 
 int FUNC9 (struct r852_device*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct r852_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct r852_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct r852_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC15(int irq, void *data)
{
	struct r852_device *dev = (struct r852_device *)data;

	uint8_t card_status, dma_status;
	unsigned long flags;
	irqreturn_t ret = IRQ_NONE;

	FUNC13(&dev->irqlock, flags);

	/* handle card detection interrupts first */
	card_status = FUNC9(dev, R852_CARD_IRQ_STA);
	FUNC11(dev, R852_CARD_IRQ_STA, card_status);

	if (card_status & (R852_CARD_IRQ_INSERT|R852_CARD_IRQ_REMOVE)) {

		ret = IRQ_HANDLED;
		dev->card_detected = !!(card_status & R852_CARD_IRQ_INSERT);

		/* we shouldn't receive any interrupts if we wait for card
			to settle */
		FUNC0(dev->card_unstable);

		/* disable irqs while card is unstable */
		/* this will timeout DMA if active, but better that garbage */
		FUNC6(dev);

		if (dev->card_unstable)
			goto out;

		/* let, card state to settle a bit, and then do the work */
		dev->card_unstable = 1;
		FUNC5(dev->card_workqueue,
			&dev->card_detect_work, FUNC4(100));
		goto out;
	}


	/* Handle dma interrupts */
	dma_status = FUNC10(dev, R852_DMA_IRQ_STA);
	FUNC12(dev, R852_DMA_IRQ_STA, dma_status);

	if (dma_status & R852_DMA_IRQ_MASK) {

		ret = IRQ_HANDLED;

		if (dma_status & R852_DMA_IRQ_ERROR) {
			FUNC3("received dma error IRQ");
			FUNC7(dev, -EIO);
			FUNC2(&dev->dma_done);
			goto out;
		}

		/* received DMA interrupt out of nowhere? */
		FUNC1(dev->dma_stage == 0);

		if (dev->dma_stage == 0)
			goto out;

		/* done device access */
		if (dev->dma_state == DMA_INTERNAL &&
				(dma_status & R852_DMA_IRQ_INTERNAL)) {

			dev->dma_state = DMA_MEMORY;
			dev->dma_stage++;
		}

		/* done memory DMA */
		if (dev->dma_state == DMA_MEMORY &&
				(dma_status & R852_DMA_IRQ_MEMORY)) {
			dev->dma_state = DMA_INTERNAL;
			dev->dma_stage++;
		}

		/* Enable 2nd half of dma dance */
		if (dev->dma_stage == 2)
			FUNC8(dev);

		/* Operation done */
		if (dev->dma_stage == 3) {
			FUNC7(dev, 0);
			FUNC2(&dev->dma_done);
		}
		goto out;
	}

	/* Handle unknown interrupts */
	if (dma_status)
		FUNC3("bad dma IRQ status = %x", dma_status);

	if (card_status & ~R852_CARD_STA_CD)
		FUNC3("strange card status = %x", card_status);

out:
	FUNC14(&dev->irqlock, flags);
	return ret;
}