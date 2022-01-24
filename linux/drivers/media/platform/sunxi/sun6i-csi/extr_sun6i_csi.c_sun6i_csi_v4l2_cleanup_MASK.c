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
struct sun6i_csi {int /*<<< orphan*/  media_dev; int /*<<< orphan*/  ctrl_handler; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  video; int /*<<< orphan*/  notifier; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct sun6i_csi *csi)
{
	FUNC1(&csi->media_dev);
	FUNC4(&csi->notifier);
	FUNC3(&csi->notifier);
	FUNC2(&csi->video);
	FUNC6(&csi->v4l2_dev);
	FUNC5(&csi->ctrl_handler);
	FUNC0(&csi->media_dev);
}