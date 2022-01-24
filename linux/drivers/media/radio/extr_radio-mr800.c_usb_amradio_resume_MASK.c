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
struct amradio_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  muted; int /*<<< orphan*/  curfreq; int /*<<< orphan*/  stereo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amradio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct amradio_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct amradio_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct amradio_device* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_interface*) ; 

__attribute__((used)) static int FUNC8(struct usb_interface *intf)
{
	struct amradio_device *radio = FUNC6(FUNC7(intf));

	FUNC4(&radio->lock);
	FUNC2(radio, radio->stereo);
	FUNC0(radio, radio->curfreq);

	if (!radio->muted)
		FUNC1(radio, false);

	FUNC5(&radio->lock);

	FUNC3(&intf->dev, "coming out of suspend..\n");
	return 0;
}