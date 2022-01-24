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
struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN6XXX_CIU_SOFT_BIST ; 
 int /*<<< orphan*/  CN6XXX_CIU_SOFT_RST ; 
 int /*<<< orphan*/  CN6XXX_SLI_SCRATCH1 ; 
 int /*<<< orphan*/  CN6XXX_WIN_WR_MASK_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (struct octeon_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct octeon_device*,int /*<<< orphan*/ ,int) ; 

int FUNC7(struct octeon_device *oct)
{
	FUNC6(oct, CN6XXX_WIN_WR_MASK_REG, 0xFF);

	FUNC0(&oct->pci_dev->dev, "BIST enabled for soft reset\n");

	FUNC3(oct, 1, CN6XXX_CIU_SOFT_BIST);
	FUNC6(oct, CN6XXX_SLI_SCRATCH1, 0x1234ULL);

	FUNC2(oct, CN6XXX_CIU_SOFT_RST);
	FUNC3(oct, 1, CN6XXX_CIU_SOFT_RST);

	/* Wait for 10ms as Octeon resets. */
	FUNC4(100);

	if (FUNC5(oct, CN6XXX_SLI_SCRATCH1)) {
		FUNC1(&oct->pci_dev->dev, "Soft reset failed\n");
		return 1;
	}

	FUNC0(&oct->pci_dev->dev, "Reset completed\n");
	FUNC6(oct, CN6XXX_WIN_WR_MASK_REG, 0xFF);

	return 0;
}