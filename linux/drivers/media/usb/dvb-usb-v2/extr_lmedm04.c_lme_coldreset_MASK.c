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
struct dvb_usb_device {int dummy; } ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dvb_usb_device*,int*,int,int*,int) ; 

__attribute__((used)) static void FUNC2(struct dvb_usb_device *d)
{
	u8 data[1] = {0};
	data[0] = 0x0a;
	FUNC0("FRM Firmware Cold Reset");

	FUNC1(d, data, sizeof(data), data, sizeof(data));

	return;
}