#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct octeon_device {TYPE_2__* pci_dev; TYPE_1__* mmio; } ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;
struct TYPE_6__ {int len; int mapped_len; int done; int /*<<< orphan*/  hw_addr; int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 scalar_t__ FUNC4 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int) ; 

__attribute__((used)) static inline int FUNC7(struct octeon_device *oct,
				      int baridx, int max_map_len)
{
	u32 mapped_len = 0;

	if (FUNC4(oct->pci_dev, baridx * 2, DRV_NAME)) {
		FUNC1(&oct->pci_dev->dev, "pci_request_region failed for bar %d\n",
			baridx);
		return 1;
	}

	oct->mmio[baridx].start = FUNC6(oct->pci_dev, baridx * 2);
	oct->mmio[baridx].len = FUNC5(oct->pci_dev, baridx * 2);

	mapped_len = oct->mmio[baridx].len;
	if (!mapped_len)
		goto err_release_region;

	if (max_map_len && (mapped_len > max_map_len))
		mapped_len = max_map_len;

	oct->mmio[baridx].hw_addr =
		FUNC2(oct->mmio[baridx].start, mapped_len);
	oct->mmio[baridx].mapped_len = mapped_len;

	FUNC0(&oct->pci_dev->dev, "BAR%d start: 0x%llx mapped %u of %u bytes\n",
		baridx, oct->mmio[baridx].start, mapped_len,
		oct->mmio[baridx].len);

	if (!oct->mmio[baridx].hw_addr) {
		FUNC1(&oct->pci_dev->dev, "error ioremap for bar %d\n",
			baridx);
		goto err_release_region;
	}
	oct->mmio[baridx].done = 1;

	return 0;

err_release_region:
	FUNC3(oct->pci_dev, baridx * 2);
	return 1;
}