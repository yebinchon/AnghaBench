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
struct si470x_device {int /*<<< orphan*/  hdl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (struct si470x_device*) ; 
 struct si470x_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct usb_interface *intf)
{
	struct si470x_device *radio = FUNC2(intf);
	int ret;

	FUNC0(&intf->dev, "resuming now...\n");

	/* start radio */
	ret = FUNC1(radio);
	if (ret == 0)
		FUNC3(&radio->hdl);

	return ret;
}