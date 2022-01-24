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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct dsbr100_device {int /*<<< orphan*/  v4l2_lock; int /*<<< orphan*/  muted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (struct dsbr100_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct dsbr100_device* FUNC5 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC6(struct usb_interface *intf)
{
	struct dsbr100_device *radio = FUNC5(intf);

	FUNC3(&radio->v4l2_lock);
	if (!radio->muted && FUNC2(radio) < 0)
		FUNC1(&intf->dev, "dsbr100_start failed\n");
	FUNC4(&radio->v4l2_lock);

	FUNC0(&intf->dev, "coming out of suspend..\n");
	return 0;
}