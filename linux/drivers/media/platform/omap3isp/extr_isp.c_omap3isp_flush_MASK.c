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

/* Variables and functions */
 int /*<<< orphan*/  ISP_REVISION ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_MAIN ; 
 int /*<<< orphan*/  FUNC0 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(struct isp_device *isp)
{
	FUNC1(isp, 0, OMAP3_ISP_IOMEM_MAIN, ISP_REVISION);
	FUNC0(isp, OMAP3_ISP_IOMEM_MAIN, ISP_REVISION);
}