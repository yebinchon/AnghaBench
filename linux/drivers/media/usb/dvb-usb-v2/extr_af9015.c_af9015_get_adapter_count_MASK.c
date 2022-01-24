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
struct dvb_usb_device {int dummy; } ;
struct af9015_state {int dual_mode; } ;

/* Variables and functions */
 struct af9015_state* FUNC0 (struct dvb_usb_device*) ; 

__attribute__((used)) static int FUNC1(struct dvb_usb_device *d)
{
	struct af9015_state *state = FUNC0(d);

	return state->dual_mode + 1;
}