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
struct rocker_dma_ring_info {int size; struct rocker_desc* desc; struct rocker_desc_info* desc_info; } ;
struct rocker_desc_info {int /*<<< orphan*/  data; int /*<<< orphan*/  data_size; } ;
struct rocker_desc {scalar_t__ buf_size; scalar_t__ buf_addr; } ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rocker_desc_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mapaddr ; 
 int /*<<< orphan*/  FUNC2 (struct pci_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(const struct rocker *rocker,
				      const struct rocker_dma_ring_info *info,
				      int direction)
{
	struct pci_dev *pdev = rocker->pdev;
	int i;

	for (i = 0; i < info->size; i++) {
		const struct rocker_desc_info *desc_info = &info->desc_info[i];
		struct rocker_desc *desc = &info->desc[i];

		desc->buf_addr = 0;
		desc->buf_size = 0;
		FUNC2(pdev, FUNC0(desc_info, mapaddr),
				 desc_info->data_size, direction);
		FUNC1(desc_info->data);
	}
}