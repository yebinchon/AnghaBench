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
struct rocker_dma_ring_info {int size; struct rocker_desc_info* desc_info; struct rocker_desc* desc; } ;
struct rocker_desc_info {char* data; size_t data_size; } ;
struct rocker_desc {size_t buf_size; int /*<<< orphan*/  buf_addr; } ;
struct rocker {struct pci_dev* pdev; } ;
struct pci_dev {int dummy; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct rocker_desc_info const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct rocker_desc_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  mapaddr ; 
 scalar_t__ FUNC4 (struct pci_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct pci_dev*,char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC6 (struct pci_dev*,int /*<<< orphan*/ ,size_t,int) ; 

__attribute__((used)) static int FUNC7(const struct rocker *rocker,
				      const struct rocker_dma_ring_info *info,
				      int direction, size_t buf_size)
{
	struct pci_dev *pdev = rocker->pdev;
	int i;
	int err;

	for (i = 0; i < info->size; i++) {
		struct rocker_desc_info *desc_info = &info->desc_info[i];
		struct rocker_desc *desc = &info->desc[i];
		dma_addr_t dma_handle;
		char *buf;

		buf = FUNC3(buf_size, GFP_KERNEL | GFP_DMA);
		if (!buf) {
			err = -ENOMEM;
			goto rollback;
		}

		dma_handle = FUNC5(pdev, buf, buf_size, direction);
		if (FUNC4(pdev, dma_handle)) {
			FUNC2(buf);
			err = -EIO;
			goto rollback;
		}

		desc_info->data = buf;
		desc_info->data_size = buf_size;
		FUNC1(desc_info, mapaddr, dma_handle);

		desc->buf_addr = dma_handle;
		desc->buf_size = buf_size;
	}
	return 0;

rollback:
	for (i--; i >= 0; i--) {
		const struct rocker_desc_info *desc_info = &info->desc_info[i];

		FUNC6(pdev, FUNC0(desc_info, mapaddr),
				 desc_info->data_size, direction);
		FUNC2(desc_info->data);
	}
	return err;
}