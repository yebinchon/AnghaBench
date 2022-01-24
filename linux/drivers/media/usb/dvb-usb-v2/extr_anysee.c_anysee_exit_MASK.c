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
struct anysee_state {scalar_t__* i2c_client; } ;

/* Variables and functions */
 void FUNC0 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*) ; 
 struct anysee_state* FUNC2 (struct dvb_usb_device*) ; 

__attribute__((used)) static void FUNC3(struct dvb_usb_device *d)
{
	struct anysee_state *state = FUNC2(d);

	if (state->i2c_client[0])
		FUNC1(d);

	return FUNC0(d);
}