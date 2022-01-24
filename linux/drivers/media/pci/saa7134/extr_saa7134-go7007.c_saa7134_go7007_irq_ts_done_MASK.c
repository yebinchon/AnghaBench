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
struct saa7134_go7007 {int /*<<< orphan*/  top_dma; int /*<<< orphan*/  top; int /*<<< orphan*/  bottom_dma; int /*<<< orphan*/  bottom; } ;
struct saa7134_dev {TYPE_1__* pci; int /*<<< orphan*/  empress_dev; } ;
struct go7007 {int /*<<< orphan*/  vidq; struct saa7134_go7007* hpi_context; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct go7007*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct go7007* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct saa7134_dev *dev,
						unsigned long status)
{
	struct go7007 *go = FUNC7(dev->empress_dev);
	struct saa7134_go7007 *saa = go->hpi_context;

	if (!FUNC6(&go->vidq))
		return;
	if (0 != (status & 0x000f0000))
		FUNC4("saa7134-go7007: irq: lost %ld\n",
				(status >> 16) & 0x0f);
	if (status & 0x100000) {
		FUNC2(&dev->pci->dev,
					saa->bottom_dma, PAGE_SIZE, DMA_FROM_DEVICE);
		FUNC3(go, saa->bottom, PAGE_SIZE);
		FUNC5(FUNC1(5), saa->bottom_dma);
	} else {
		FUNC2(&dev->pci->dev,
					saa->top_dma, PAGE_SIZE, DMA_FROM_DEVICE);
		FUNC3(go, saa->top, PAGE_SIZE);
		FUNC5(FUNC0(5), saa->top_dma);
	}
}