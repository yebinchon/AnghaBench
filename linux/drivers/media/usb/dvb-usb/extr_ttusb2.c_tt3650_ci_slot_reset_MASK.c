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
typedef  int u8 ;
struct ttusb2_state {int /*<<< orphan*/  ca_mutex; } ;
struct dvb_usb_device {struct ttusb2_state* priv; } ;
struct dvb_ca_en50221 {struct dvb_usb_device* data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TT3650_CMD_CI_RESET ; 
 int /*<<< orphan*/  TT3650_CMD_CI_SET_VIDEO_PORT ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct dvb_usb_device*,int /*<<< orphan*/ ,int*,int,int) ; 

__attribute__((used)) static int FUNC5(struct dvb_ca_en50221 *ca, int slot)
{
	struct dvb_usb_device *d = ca->data;
	struct ttusb2_state *state = d->priv;
	u8 buf[1];
	int ret;

	FUNC0("%d", slot);

	if (slot)
		return -EINVAL;

	buf[0] = 0;

	FUNC2(&state->ca_mutex);

	ret = FUNC4(d, TT3650_CMD_CI_RESET, buf, 1, 1);
	if (ret)
		goto failed;

	FUNC1(500);

	buf[0] = 1;

	ret = FUNC4(d, TT3650_CMD_CI_RESET, buf, 1, 1);
	if (ret)
		goto failed;

	FUNC1(500);

	buf[0] = 0; /* FTA */

	ret = FUNC4(d, TT3650_CMD_CI_SET_VIDEO_PORT, buf, 1, 1);

	FUNC1(1100);

 failed:
	FUNC3(&state->ca_mutex);

	return ret;
}