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
struct si4713_usb_device {int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  vdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct si4713_usb_device* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct usb_interface *intf)
{
	struct si4713_usb_device *radio = FUNC3(FUNC4(intf));

	FUNC0(&intf->dev, "Si4713 development board now disconnected\n");

	FUNC1(&radio->lock);
	FUNC5(intf, NULL);
	FUNC8(&radio->vdev);
	FUNC6(&radio->v4l2_dev);
	FUNC2(&radio->lock);
	FUNC7(&radio->v4l2_dev);
}