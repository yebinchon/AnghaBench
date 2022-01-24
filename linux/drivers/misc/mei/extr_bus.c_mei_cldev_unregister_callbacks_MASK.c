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
struct mei_cl_device {int /*<<< orphan*/ * notif_cb; int /*<<< orphan*/  notif_work; int /*<<< orphan*/ * rx_cb; int /*<<< orphan*/  rx_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct mei_cl_device *cldev)
{
	if (cldev->rx_cb) {
		FUNC0(&cldev->rx_work);
		cldev->rx_cb = NULL;
	}

	if (cldev->notif_cb) {
		FUNC0(&cldev->notif_work);
		cldev->notif_cb = NULL;
	}
}