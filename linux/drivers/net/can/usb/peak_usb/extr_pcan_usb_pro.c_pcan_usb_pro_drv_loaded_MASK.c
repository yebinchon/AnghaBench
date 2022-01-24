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
struct peak_usb_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PCAN_USBPRO_FCT_DRVLD ; 
 int /*<<< orphan*/  PCAN_USBPRO_FCT_DRVLD_REQ_LEN ; 
 int /*<<< orphan*/  PCAN_USBPRO_REQ_FCT ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct peak_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct peak_usb_device *dev, int loaded)
{
	u8 *buffer;
	int err;

	buffer = FUNC1(PCAN_USBPRO_FCT_DRVLD_REQ_LEN, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	buffer[0] = 0;
	buffer[1] = !!loaded;

	err = FUNC2(dev, PCAN_USBPRO_REQ_FCT,
				    PCAN_USBPRO_FCT_DRVLD, buffer,
				    PCAN_USBPRO_FCT_DRVLD_REQ_LEN);
	FUNC0(buffer);

	return err;
}