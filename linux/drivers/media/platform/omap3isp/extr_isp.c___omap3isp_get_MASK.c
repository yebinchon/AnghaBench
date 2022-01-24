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
struct isp_device {scalar_t__ ref_count; int /*<<< orphan*/  isp_mutex; scalar_t__ has_context; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct isp_device *FUNC5(struct isp_device *isp, bool irq)
{
	struct isp_device *__isp = isp;

	if (isp == NULL)
		return NULL;

	FUNC3(&isp->isp_mutex);
	if (isp->ref_count > 0)
		goto out;

	if (FUNC0(isp) < 0) {
		__isp = NULL;
		goto out;
	}

	/* We don't want to restore context before saving it! */
	if (isp->has_context)
		FUNC2(isp);

	if (irq)
		FUNC1(isp);

out:
	if (__isp != NULL)
		isp->ref_count++;
	FUNC4(&isp->isp_mutex);

	return __isp;
}