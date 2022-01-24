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
struct r852_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R852_CARD_IRQ_ENABLE ; 
 int R852_CARD_IRQ_MASK ; 
 int /*<<< orphan*/  R852_CARD_IRQ_STA ; 
 int /*<<< orphan*/  R852_DMA_IRQ_ENABLE ; 
 int R852_DMA_IRQ_MASK ; 
 int /*<<< orphan*/  R852_DMA_IRQ_STA ; 
 int FUNC0 (struct r852_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct r852_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct r852_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct r852_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct r852_device *dev)
{
	uint8_t reg;
	reg = FUNC0(dev, R852_CARD_IRQ_ENABLE);
	FUNC2(dev, R852_CARD_IRQ_ENABLE, reg & ~R852_CARD_IRQ_MASK);

	reg = FUNC1(dev, R852_DMA_IRQ_ENABLE);
	FUNC3(dev, R852_DMA_IRQ_ENABLE,
					reg & ~R852_DMA_IRQ_MASK);

	FUNC2(dev, R852_CARD_IRQ_STA, R852_CARD_IRQ_MASK);
	FUNC3(dev, R852_DMA_IRQ_STA, R852_DMA_IRQ_MASK);
}