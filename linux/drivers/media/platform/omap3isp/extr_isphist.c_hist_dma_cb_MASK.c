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
struct ispstat {scalar_t__ state; int /*<<< orphan*/  isp; } ;

/* Variables and functions */
 int /*<<< orphan*/  ISPHIST_CNT ; 
 int /*<<< orphan*/  ISPHIST_CNT_CLEAR ; 
 scalar_t__ ISPSTAT_DISABLED ; 
 int /*<<< orphan*/  OMAP3_ISP_IOMEM_HIST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ispstat*) ; 

__attribute__((used)) static void FUNC3(void *data)
{
	struct ispstat *hist = data;

	/* FIXME: The DMA engine API can't report transfer errors :-/ */

	FUNC0(hist->isp, OMAP3_ISP_IOMEM_HIST, ISPHIST_CNT,
		    ISPHIST_CNT_CLEAR);

	FUNC2(hist);
	if (hist->state != ISPSTAT_DISABLED)
		FUNC1(hist->isp);
}