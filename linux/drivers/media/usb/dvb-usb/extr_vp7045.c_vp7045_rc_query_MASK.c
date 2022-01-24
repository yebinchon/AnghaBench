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
struct dvb_usb_device {int /*<<< orphan*/  rc_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  RC_PROTO_NEC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RC_VAL_READ ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_usb_device *d)
{
	u8 key;
	FUNC3(d,RC_VAL_READ,NULL,0,&key,1,20);

	FUNC1("remote query key: %x %d\n",key,key);

	if (key != 0x44) {
		/*
		 * The 8 bit address isn't available, but since the remote uses
		 * address 0 we'll use that. nec repeats are ignored too, even
		 * though the remote sends them.
		 */
		FUNC2(d->rc_dev, RC_PROTO_NEC, FUNC0(0, key), 0);
	}

	return 0;
}