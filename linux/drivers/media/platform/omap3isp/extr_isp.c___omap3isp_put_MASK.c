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
struct isp_device {scalar_t__ ref_count; int has_context; int /*<<< orphan*/  isp_mutex; scalar_t__ stop_failure; int /*<<< orphan*/  crashed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct isp_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct isp_device *isp, bool save_ctx)
{
	if (isp == NULL)
		return;

	FUNC6(&isp->isp_mutex);
	FUNC0(isp->ref_count == 0);
	if (--isp->ref_count == 0) {
		FUNC2(isp);
		if (save_ctx) {
			FUNC4(isp);
			isp->has_context = 1;
		}
		/* Reset the ISP if an entity has failed to stop. This is the
		 * only way to recover from such conditions.
		 */
		if (!FUNC5(&isp->crashed) ||
		    isp->stop_failure)
			FUNC3(isp);
		FUNC1(isp);
	}
	FUNC7(&isp->isp_mutex);
}