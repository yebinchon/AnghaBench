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
struct urb {int dummy; } ;
struct pucan_command {int dummy; } ;
struct peak_usb_device {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  PCAN_USBPRO_EP_CMDOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct peak_usb_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pcan_usb_pro_restart_complete ; 
 int /*<<< orphan*/  FUNC2 (struct urb*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct peak_usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct urb*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct peak_usb_device *dev,
				     struct urb *urb, u8 *buf)
{
	u8 *pc = buf;

	/* build the entire cmds list in the provided buffer, to go back into
	 * operational mode.
	 */
	pc += FUNC1(dev, pc);

	/* add EOC */
	FUNC0(pc, 0xff, sizeof(struct pucan_command));
	pc += sizeof(struct pucan_command);

	/* complete the URB */
	FUNC2(urb, dev->udev,
			  FUNC3(dev->udev, PCAN_USBPRO_EP_CMDOUT),
			  buf, pc - buf,
			  pcan_usb_pro_restart_complete, dev);

	/* and submit it. */
	return FUNC4(urb, GFP_ATOMIC);
}