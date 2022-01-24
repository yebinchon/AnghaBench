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
struct firmware {int dummy; } ;
struct dvb_usb_device {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CYPRESS_FX2 ; 
 int FUNC0 (int /*<<< orphan*/ ,struct firmware const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_device *d,
	const struct firmware *fw)
{
	FUNC1("Loading az6007 firmware\n");

	return FUNC0(d->udev, fw, CYPRESS_FX2);
}