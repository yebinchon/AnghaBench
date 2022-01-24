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
typedef  scalar_t__ u16 ;
struct dvb_usb_device {int dummy; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct dvb_usb_device*,int,scalar_t__,scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_ca_en50221 *ca, int slot)
{
	struct dvb_usb_device *d = (struct dvb_usb_device *)ca->data;

	int ret;
	u8 req;
	u16 value;
	u16 index;
	int blen;
	u8 *b;

	b = FUNC2(12, GFP_KERNEL);
	if (!b)
		return -ENOMEM;

	req = 0xC8;
	value = 0;
	index = 0;
	blen = 1;

	ret = FUNC0(d, req, value, index, b, blen);
	if (ret < 0) {
		FUNC3("usb in operation failed. (%d)\n", ret);
		ret = -EIO;
	} else{
		ret = b[0];
	}
	FUNC1(b);
	return ret;
}