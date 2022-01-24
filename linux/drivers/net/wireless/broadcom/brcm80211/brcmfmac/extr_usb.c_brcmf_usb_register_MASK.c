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

/* Variables and functions */
 int /*<<< orphan*/  USB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  brcmf_usbdrvr ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(void)
{
	int ret;

	FUNC0(USB, "Enter\n");
	ret = FUNC2(&brcmf_usbdrvr);
	if (ret)
		FUNC1("usb_register failed %d\n", ret);
}