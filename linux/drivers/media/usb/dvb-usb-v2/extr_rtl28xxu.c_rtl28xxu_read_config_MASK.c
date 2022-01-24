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
struct rtl28xxu_dev {scalar_t__ chip_id; } ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ CHIP_ID_RTL2831U ; 
 struct rtl28xxu_dev* FUNC0 (struct dvb_usb_device*) ; 
 int FUNC1 (struct dvb_usb_device*) ; 
 int FUNC2 (struct dvb_usb_device*) ; 

__attribute__((used)) static int FUNC3(struct dvb_usb_device *d)
{
	struct rtl28xxu_dev *dev = FUNC0(d);

	if (dev->chip_id == CHIP_ID_RTL2831U)
		return FUNC1(d);
	else
		return FUNC2(d);
}