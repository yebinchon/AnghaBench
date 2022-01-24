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
 scalar_t__ FUNC0 (struct dvb_ca_en50221*,int) ; 
 int FUNC1 (struct dvb_usb_device*,int,int,int,int /*<<< orphan*/ *,int) ; 
 struct az6007_device_state* FUNC2 (struct dvb_usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 

__attribute__((used)) static int FUNC8(struct dvb_ca_en50221 *ca, int slot)
{
	struct dvb_usb_device *d = (struct dvb_usb_device *)ca->data;
	struct az6007_device_state *state = FUNC2(d);

	int ret, i;
	u8 req;
	u16 value;
	u16 index;
	int blen;

	FUNC4(&state->ca_mutex);

	req = 0xC6;
	value = 1;
	index = 0;
	blen = 0;

	ret = FUNC1(d, req, value, index, NULL, blen);
	if (ret != 0) {
		FUNC7("usb out operation failed. (%d)\n", ret);
		goto failed;
	}

	FUNC3(500);
	req = 0xC6;
	value = 0;
	index = 0;
	blen = 0;

	ret = FUNC1(d, req, value, index, NULL, blen);
	if (ret != 0) {
		FUNC7("usb out operation failed. (%d)\n", ret);
		goto failed;
	}

	for (i = 0; i < 15; i++) {
		FUNC3(100);

		if (FUNC0(ca, slot)) {
			FUNC6("CAM Ready\n");
			break;
		}
	}
	FUNC3(5000);

failed:
	FUNC5(&state->ca_mutex);
	return ret;
}