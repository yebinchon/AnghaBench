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
struct net_device {int dummy; } ;
struct gs_identify_mode {int /*<<< orphan*/  mode; } ;
struct gs_can {int /*<<< orphan*/  channel; int /*<<< orphan*/  iface; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GS_CAN_IDENTIFY_OFF ; 
 int /*<<< orphan*/  GS_CAN_IDENTIFY_ON ; 
 int /*<<< orphan*/  GS_USB_BREQ_IDENTIFY ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct gs_identify_mode*) ; 
 struct gs_identify_mode* FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct gs_can* FUNC3 (struct net_device*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gs_identify_mode*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *netdev, bool do_identify)
{
	struct gs_can *dev = FUNC3(netdev);
	struct gs_identify_mode *imode;
	int rc;

	imode = FUNC2(sizeof(*imode), GFP_KERNEL);

	if (!imode)
		return -ENOMEM;

	if (do_identify)
		imode->mode = GS_CAN_IDENTIFY_ON;
	else
		imode->mode = GS_CAN_IDENTIFY_OFF;

	rc = FUNC4(FUNC0(dev->iface),
			     FUNC5(FUNC0(dev->iface),
					     0),
			     GS_USB_BREQ_IDENTIFY,
			     USB_DIR_OUT | USB_TYPE_VENDOR |
			     USB_RECIP_INTERFACE,
			     dev->channel,
			     0,
			     imode,
			     sizeof(*imode),
			     100);

	FUNC1(imode);

	return (rc > 0) ? 0 : rc;
}