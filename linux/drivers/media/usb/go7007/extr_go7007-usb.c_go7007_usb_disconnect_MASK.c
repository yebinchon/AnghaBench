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
struct usb_interface {int dummy; } ;
struct go7007 {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  serialize_lock; int /*<<< orphan*/  vdev; int /*<<< orphan*/  status; scalar_t__ audio_enabled; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC0 (struct go7007*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct go7007* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct go7007 *go = FUNC3(FUNC4(intf));

	FUNC1(&go->queue_lock);
	FUNC1(&go->serialize_lock);

	if (go->audio_enabled)
		FUNC0(go);

	go->status = STATUS_SHUTDOWN;
	FUNC5(&go->v4l2_dev);
	FUNC7(&go->vdev);
	FUNC2(&go->serialize_lock);
	FUNC2(&go->queue_lock);

	FUNC6(&go->v4l2_dev);
}