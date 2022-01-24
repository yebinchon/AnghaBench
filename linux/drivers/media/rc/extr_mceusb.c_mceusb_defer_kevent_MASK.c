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
struct mceusb_dev {int /*<<< orphan*/  dev; int /*<<< orphan*/  kevent; int /*<<< orphan*/  kevent_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVENT_RST_PEND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct mceusb_dev *ir, int kevent)
{
	FUNC2(kevent, &ir->kevent_flags);

	if (FUNC3(EVENT_RST_PEND, &ir->kevent_flags)) {
		FUNC0(ir->dev, "kevent %d dropped pending USB Reset Device",
			kevent);
		return;
	}

	if (!FUNC1(&ir->kevent))
		FUNC0(ir->dev, "kevent %d already scheduled", kevent);
	else
		FUNC0(ir->dev, "kevent %d scheduled", kevent);
}