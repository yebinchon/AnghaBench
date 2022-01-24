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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dvb_usb_device*,int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dvb_usb_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_device *d, u16 reghi,
				 u16 reglo, u8 pos, u8 len, u16 value)
{
	int ret;

	if ((ret = FUNC0(d, reglo, (u8) (value & 0xff))))
		return ret;
	return FUNC1(d, reghi, pos, len,
					  (u8) ((value & 0x300) >> 8));
}