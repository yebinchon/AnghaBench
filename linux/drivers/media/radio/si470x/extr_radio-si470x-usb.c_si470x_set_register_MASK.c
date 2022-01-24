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
struct si470x_device {int /*<<< orphan*/ * usb_buf; int /*<<< orphan*/ * registers; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  REGISTER_REPORT_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct si470x_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct si470x_device *radio, int regnr)
{
	int retval;

	radio->usb_buf[0] = FUNC0(regnr);
	FUNC1(radio->registers[regnr], &radio->usb_buf[1]);

	retval = FUNC2(radio, radio->usb_buf, REGISTER_REPORT_SIZE);

	return (retval < 0) ? -EINVAL : 0;
}