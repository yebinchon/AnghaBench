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
struct cnic_dma {int num_pages; int /*<<< orphan*/ ** pg_arr; int /*<<< orphan*/ * pgtbl; int /*<<< orphan*/  pgtbl_map; int /*<<< orphan*/  pgtbl_size; int /*<<< orphan*/ * pg_map_arr; } ;
struct cnic_dev {TYPE_1__* pcidev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CNIC_PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC2(struct cnic_dev *dev, struct cnic_dma *dma)
{
	int i;

	if (!dma->pg_arr)
		return;

	for (i = 0; i < dma->num_pages; i++) {
		if (dma->pg_arr[i]) {
			FUNC0(&dev->pcidev->dev, CNIC_PAGE_SIZE,
					  dma->pg_arr[i], dma->pg_map_arr[i]);
			dma->pg_arr[i] = NULL;
		}
	}
	if (dma->pgtbl) {
		FUNC0(&dev->pcidev->dev, dma->pgtbl_size,
				  dma->pgtbl, dma->pgtbl_map);
		dma->pgtbl = NULL;
	}
	FUNC1(dma->pg_arr);
	dma->pg_arr = NULL;
	dma->num_pages = 0;
}