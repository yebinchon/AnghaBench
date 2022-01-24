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
struct ma901radio_device {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ma901radio_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct ma901radio_device *radio = FUNC2(FUNC3(intf));

	FUNC0(&radio->lock);
	FUNC7(&radio->vdev);
	FUNC4(intf, NULL);
	FUNC5(&radio->v4l2_dev);
	FUNC1(&radio->lock);
	FUNC6(&radio->v4l2_dev);
}