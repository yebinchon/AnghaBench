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
struct TYPE_2__ {int /*<<< orphan*/  buf_err; } ;
struct isp_device {int /*<<< orphan*/  dev; TYPE_1__ isp_hist; int /*<<< orphan*/  isp_ccdc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 

void FUNC4(struct isp_device *isp)
{
	if (FUNC2(&isp->isp_ccdc) ||
	    FUNC3(&isp->isp_hist)) {
		/* Histogram cannot be enabled in this frame anymore */
		FUNC0(&isp->isp_hist.buf_err, 1);
		FUNC1(isp->dev,
			"hist: Out of synchronization with CCDC. Ignoring next buffer.\n");
	}
}