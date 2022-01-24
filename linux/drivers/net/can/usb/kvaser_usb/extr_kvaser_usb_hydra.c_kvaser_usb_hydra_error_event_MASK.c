#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kvaser_usb {TYPE_1__* intf; } ;
struct TYPE_4__ {int error_code; int /*<<< orphan*/  info1; } ;
struct kvaser_cmd {TYPE_2__ error_event; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
#define  KVASER_USB_HYDRA_ERROR_EVENT_CAN 129 
#define  KVASER_USB_HYDRA_ERROR_EVENT_PARAM 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct kvaser_usb const*,struct kvaser_cmd const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct kvaser_usb *dev,
					 const struct kvaser_cmd *cmd)
{
	switch (cmd->error_event.error_code) {
	case KVASER_USB_HYDRA_ERROR_EVENT_PARAM:
		FUNC2(dev, cmd);
		break;

	case KVASER_USB_HYDRA_ERROR_EVENT_CAN:
		/* Wrong channel mapping?! This should never happen!
		 * info1 will contain the offending cmd_no
		 */
		FUNC0(&dev->intf->dev,
			"Received CAN error event for cmd_no (%u)\n",
			FUNC3(cmd->error_event.info1));
		break;

	default:
		FUNC1(&dev->intf->dev,
			 "Unhandled error event (%d)\n",
			 cmd->error_event.error_code);
		break;
	}
}