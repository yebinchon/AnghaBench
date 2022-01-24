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
struct isp_prev_device {scalar_t__ input; } ;
struct isp_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPPRV_PCR ; 
 int ISPPRV_PCR_EN ; 
 int ISPPRV_PCR_ONESHOT ; 
 int ISPPRV_PCR_SOURCE ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_PREV ; 
 scalar_t__ PREVIEW_INPUT_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct isp_device* FUNC1 (struct isp_prev_device*) ; 

__attribute__((used)) static void FUNC2(struct isp_prev_device *prev)
{
	struct isp_device *isp = FUNC1(prev);

	/* The PCR.SOURCE bit is automatically reset to 0 when the PCR.ENABLE
	 * bit is set. As the preview engine is used in single-shot mode, we
	 * need to set PCR.SOURCE before enabling the preview engine.
	 */
	if (prev->input == PREVIEW_INPUT_MEMORY)
		FUNC0(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
			    ISPPRV_PCR_SOURCE);

	FUNC0(isp, OMAP3_ISP_IOMEM_PREV, ISPPRV_PCR,
		    ISPPRV_PCR_EN | ISPPRV_PCR_ONESHOT);
}