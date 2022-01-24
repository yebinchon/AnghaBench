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
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct ddb_dma {int num; int /*<<< orphan*/ ** vbuf; int /*<<< orphan*/ * pbuf; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 scalar_t__ alt_dma ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct pci_dev *pdev, struct ddb_dma *dma, int dir)
{
	int i;

	if (!dma)
		return;
	for (i = 0; i < dma->num; i++) {
		if (dma->vbuf[i]) {
			if (alt_dma) {
				FUNC1(&pdev->dev, dma->pbuf[i],
						 dma->size,
						 dir ? DMA_TO_DEVICE :
						 DMA_FROM_DEVICE);
				FUNC2(dma->vbuf[i]);
				dma->vbuf[i] = NULL;
			} else {
				FUNC0(&pdev->dev, dma->size,
						  dma->vbuf[i], dma->pbuf[i]);
			}

			dma->vbuf[i] = NULL;
		}
	}
}