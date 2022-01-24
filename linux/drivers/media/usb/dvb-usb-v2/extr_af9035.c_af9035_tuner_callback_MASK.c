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
struct state {TYPE_1__* af9033_config; } ;
struct dvb_usb_device {int dummy; } ;
struct TYPE_2__ {int tuner; } ;

/* Variables and functions */
#define  AF9033_TUNER_FC0011 129 
#define  AF9033_TUNER_TUA9001 128 
 int FUNC0 (struct dvb_usb_device*,int,int) ; 
 int FUNC1 (struct dvb_usb_device*,int,int) ; 
 struct state* FUNC2 (struct dvb_usb_device*) ; 

__attribute__((used)) static int FUNC3(struct dvb_usb_device *d, int cmd, int arg)
{
	struct state *state = FUNC2(d);

	switch (state->af9033_config[0].tuner) {
	case AF9033_TUNER_FC0011:
		return FUNC0(d, cmd, arg);
	case AF9033_TUNER_TUA9001:
		return FUNC1(d, cmd, arg);
	default:
		break;
	}

	return 0;
}