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

/* Variables and functions */
 int WARM ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_device *d, const char **name)
{
	FUNC0(d, 0x04, 1);
	FUNC1(20);
	FUNC0(d, 0x83, 0);
	FUNC0(d, 0xc0, 1);
	FUNC1(100);
	FUNC0(d, 0x83, 1);
	FUNC0(d, 0xc0, 0);
	FUNC1(50);

	return WARM;
}