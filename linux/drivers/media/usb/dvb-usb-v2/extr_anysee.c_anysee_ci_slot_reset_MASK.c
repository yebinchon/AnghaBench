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
struct dvb_ca_en50221 {struct dvb_usb_device* data; } ;
struct anysee_state {scalar_t__ ci_cam_ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_IOA ; 
 int FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,int,int) ; 
 struct anysee_state* FUNC1 (struct dvb_usb_device*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct dvb_ca_en50221 *ci, int slot)
{
	struct dvb_usb_device *d = ci->data;
	int ret;
	struct anysee_state *state = FUNC1(d);

	state->ci_cam_ready = jiffies + FUNC2(1000);

	ret = FUNC0(d, REG_IOA, (0 << 7), 0x80);
	if (ret)
		return ret;

	FUNC3(300);

	ret = FUNC0(d, REG_IOA, (1 << 7), 0x80);
	if (ret)
		return ret;

	return 0;
}