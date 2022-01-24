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
struct v4l2_device {int dummy; } ;
struct usb_interface {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct shark_device {int /*<<< orphan*/  v4l2_dev; TYPE_1__ tea; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct shark_device*) ; 
 struct v4l2_device* FUNC4 (struct usb_interface*) ; 
 struct shark_device* FUNC5 (struct v4l2_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct usb_interface *intf)
{
	struct v4l2_device *v4l2_dev = FUNC4(intf);
	struct shark_device *shark = FUNC5(v4l2_dev);

	FUNC0(&shark->tea.mutex);
	FUNC6(&shark->v4l2_dev);
	FUNC2(&shark->tea);
	FUNC1(&shark->tea.mutex);

	FUNC3(shark);

	FUNC7(&shark->v4l2_dev);
}