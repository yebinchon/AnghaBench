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
typedef  int u16 ;
struct dvb_usb_device {int dummy; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;
struct az6007_device_state {int /*<<< orphan*/  ca_mutex; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct dvb_usb_device*,int,int,int,int*,int) ; 
 struct az6007_device_state* FUNC1 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static int FUNC8(struct dvb_ca_en50221 *ca,
				      int slot,
				      u8 address)
{
	struct dvb_usb_device *d = (struct dvb_usb_device *)ca->data;
	struct az6007_device_state *state = FUNC1(d);

	int ret;
	u8 req;
	u16 value;
	u16 index;
	int blen;
	u8 *b;

	if (slot != 0)
		return -EINVAL;

	b = FUNC3(12, GFP_KERNEL);
	if (!b)
		return -ENOMEM;

	FUNC4(&state->ca_mutex);

	req = 0xC3;
	value = address;
	index = 0;
	blen = 2;

	ret = FUNC0(d, req, value, index, b, blen);
	if (ret < 0) {
		FUNC7("usb in operation failed. (%d)\n", ret);
		ret = -EINVAL;
	} else {
		if (b[0] == 0)
			FUNC7("Read CI IO error\n");

		ret = b[1];
		FUNC6("read cam data = %x from 0x%x\n", b[1], value);
	}

	FUNC5(&state->ca_mutex);
	FUNC2(b);
	return ret;
}