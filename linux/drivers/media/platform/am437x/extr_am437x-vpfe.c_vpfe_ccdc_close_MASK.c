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
struct vpfe_ccdc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VPFE_DMA_CNTL ; 
 int VPFE_DMA_CNTL_OVERFLOW ; 
 int /*<<< orphan*/  VPFE_PCR ; 
 int /*<<< orphan*/  FUNC0 (struct device*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vpfe_ccdc*) ; 
 int /*<<< orphan*/  FUNC3 (struct vpfe_ccdc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct vpfe_ccdc*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct vpfe_ccdc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct vpfe_ccdc*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct vpfe_ccdc *ccdc, struct device *dev)
{
	int dma_cntl, i, pcr;

	/* If the CCDC module is still busy wait for it to be done */
	for (i = 0; i < 10; i++) {
		FUNC1(5000, 6000);
		pcr = FUNC5(ccdc, VPFE_PCR);
		if (!pcr)
			break;

		/* make sure it it is disabled */
		FUNC4(ccdc, 0);
	}

	/* Disable CCDC by resetting all register to default POR values */
	FUNC2(ccdc);

	/* if DMA_CNTL overflow bit is set. Clear it
	 *  It appears to take a while for this to become quiescent ~20ms
	 */
	for (i = 0; i < 10; i++) {
		dma_cntl = FUNC5(ccdc, VPFE_DMA_CNTL);
		if (!(dma_cntl & VPFE_DMA_CNTL_OVERFLOW))
			break;

		/* Clear the overflow bit */
		FUNC6(ccdc, dma_cntl, VPFE_DMA_CNTL);
		FUNC1(5000, 6000);
	}

	/* Disabled the module at the CONFIG level */
	FUNC3(ccdc, 0);

	FUNC0(dev);

	return 0;
}