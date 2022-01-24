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
typedef  int u32 ;
struct isp_ccdc_device {scalar_t__ state; } ;

/* Variables and functions */
 int IRQ0STATUS_CCDC_VD0_IRQ ; 
 int IRQ0STATUS_CCDC_VD1_IRQ ; 
 int IRQ0STATUS_HS_VS_IRQ ; 
 scalar_t__ ISP_PIPELINE_STREAM_STOPPED ; 
 int /*<<< orphan*/  FUNC0 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_ccdc_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_ccdc_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_ccdc_device*) ; 

int FUNC4(struct isp_ccdc_device *ccdc, u32 events)
{
	if (ccdc->state == ISP_PIPELINE_STREAM_STOPPED)
		return 0;

	if (events & IRQ0STATUS_CCDC_VD1_IRQ)
		FUNC3(ccdc);

	FUNC1(ccdc, events);

	if (events & IRQ0STATUS_CCDC_VD0_IRQ)
		FUNC2(ccdc);

	if (events & IRQ0STATUS_HS_VS_IRQ)
		FUNC0(ccdc);

	return 0;
}