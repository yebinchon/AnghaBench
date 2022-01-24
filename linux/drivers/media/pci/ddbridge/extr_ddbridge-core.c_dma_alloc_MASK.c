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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  __GFP_RETRY_MAYFAIL ; 
 scalar_t__ alt_dma ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct pci_dev *pdev, struct ddb_dma *dma, int dir)
{
	int i;

	if (!dma)
		return 0;
	for (i = 0; i < dma->num; i++) {
		if (alt_dma) {
			dma->vbuf[i] = FUNC4(dma->size, __GFP_RETRY_MAYFAIL);
			if (!dma->vbuf[i])
				return -ENOMEM;
			dma->pbuf[i] = FUNC1(&pdev->dev,
						      dma->vbuf[i],
						      dma->size,
						      dir ? DMA_TO_DEVICE :
						      DMA_FROM_DEVICE);
			if (FUNC2(&pdev->dev, dma->pbuf[i])) {
				FUNC3(dma->vbuf[i]);
				dma->vbuf[i] = NULL;
				return -ENOMEM;
			}
		} else {
			dma->vbuf[i] = FUNC0(&pdev->dev,
							  dma->size,
							  &dma->pbuf[i],
							  GFP_KERNEL);
			if (!dma->vbuf[i])
				return -ENOMEM;
		}
	}
	return 0;
}