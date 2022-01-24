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
struct isp_device {int dummy; } ;
struct isp_ccdc_device {int dummy; } ;

/* Variables and functions */
 int ETIMEDOUT ; 
 int IRQ0STATUS_CCDC_LSC_PREF_COMP_IRQ ; 
 int /*<<< orphan*/  ISP_IRQ0STATUS ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_MAIN ; 
 int FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct isp_device* FUNC3 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct isp_ccdc_device *ccdc)
{
	struct isp_device *isp = FUNC3(ccdc);
	unsigned int wait;

	FUNC1(isp, IRQ0STATUS_CCDC_LSC_PREF_COMP_IRQ,
		       OMAP3_ISP_IOMEM_MAIN, ISP_IRQ0STATUS);

	/* timeout 1 ms */
	for (wait = 0; wait < 1000; wait++) {
		if (FUNC0(isp, OMAP3_ISP_IOMEM_MAIN, ISP_IRQ0STATUS) &
				  IRQ0STATUS_CCDC_LSC_PREF_COMP_IRQ) {
			FUNC1(isp, IRQ0STATUS_CCDC_LSC_PREF_COMP_IRQ,
				       OMAP3_ISP_IOMEM_MAIN, ISP_IRQ0STATUS);
			return 0;
		}

		FUNC2();
		FUNC4(1);
	}

	return -ETIMEDOUT;
}