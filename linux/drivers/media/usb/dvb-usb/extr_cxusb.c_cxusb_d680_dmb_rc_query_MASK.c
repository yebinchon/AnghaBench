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
typedef  scalar_t__ u8 ;
struct dvb_usb_device {int /*<<< orphan*/  rc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RC_PROTO_UNKNOWN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct dvb_usb_device*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dvb_usb_device *d)
{
	u8 ircode[2];

	if (FUNC1(d, 0x10, NULL, 0, ircode, 2) < 0)
		return 0;

	if (ircode[0] || ircode[1])
		FUNC2(d->rc_dev, RC_PROTO_UNKNOWN,
			   FUNC0(ircode[0], ircode[1]), 0);
	return 0;
}