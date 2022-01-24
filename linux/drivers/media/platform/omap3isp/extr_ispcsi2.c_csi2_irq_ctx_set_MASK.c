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
struct isp_csi2_device {int /*<<< orphan*/  regs1; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ISPCSI2_CTX_IRQSTATUS_FE_IRQ ; 
 int /*<<< orphan*/  FUNC2 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct isp_device *isp,
			     struct isp_csi2_device *csi2, int enable)
{
	int i;

	for (i = 0; i < 8; i++) {
		FUNC4(isp, ISPCSI2_CTX_IRQSTATUS_FE_IRQ, csi2->regs1,
			       FUNC1(i));
		if (enable)
			FUNC3(isp, csi2->regs1, FUNC0(i),
				    ISPCSI2_CTX_IRQSTATUS_FE_IRQ);
		else
			FUNC2(isp, csi2->regs1, FUNC0(i),
				    ISPCSI2_CTX_IRQSTATUS_FE_IRQ);
	}
}