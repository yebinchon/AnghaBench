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
struct TYPE_2__ {struct media_device* mdev; } ;
struct media_interface {TYPE_1__ graph_obj; } ;
struct media_device {int /*<<< orphan*/  graph_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct media_interface*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct media_interface *intf)
{
	struct media_device *mdev = intf->graph_obj.mdev;

	/* Do nothing if the intf is not registered. */
	if (mdev == NULL)
		return;

	FUNC1(&mdev->graph_mutex);
	FUNC0(intf);
	FUNC2(&mdev->graph_mutex);
}