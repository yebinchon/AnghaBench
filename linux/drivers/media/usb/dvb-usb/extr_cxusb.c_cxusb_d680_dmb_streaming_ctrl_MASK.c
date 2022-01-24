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
struct dvb_usb_adapter {int /*<<< orphan*/  dev; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_STREAMING_OFF ; 
 int /*<<< orphan*/  CMD_STREAMING_ON ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_adapter *adap,
					 int onoff)
{
	if (onoff) {
		u8 buf[2] = { 0x03, 0x00 };

		FUNC1(adap->dev);
		return FUNC0(adap->dev, CMD_STREAMING_ON,
				      buf, sizeof(buf), NULL, 0);
	} else {
		int ret = FUNC0(adap->dev,
					 CMD_STREAMING_OFF, NULL, 0, NULL, 0);
		return ret;
	}
}