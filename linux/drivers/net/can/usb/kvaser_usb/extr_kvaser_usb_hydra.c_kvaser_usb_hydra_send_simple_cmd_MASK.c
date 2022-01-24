#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_6__ {int /*<<< orphan*/ * channel_to_he; } ;
struct TYPE_7__ {TYPE_2__ hydra; } ;
struct kvaser_usb {TYPE_3__ card_data; TYPE_1__* intf; } ;
struct TYPE_8__ {int /*<<< orphan*/  cmd_no; } ;
struct kvaser_cmd {TYPE_4__ header; } ;
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KVASER_USB_HYDRA_HE_ADDRESS_ILLEGAL ; 
 int KVASER_USB_MAX_NET_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 struct kvaser_cmd* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct kvaser_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (struct kvaser_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvaser_usb*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct kvaser_usb*,struct kvaser_cmd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct kvaser_usb *dev,
					    u8 cmd_no, int channel)
{
	struct kvaser_cmd *cmd;
	int err;

	cmd = FUNC1(1, sizeof(struct kvaser_cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	cmd->header.cmd_no = cmd_no;
	if (channel < 0) {
		FUNC5
				(cmd, KVASER_USB_HYDRA_HE_ADDRESS_ILLEGAL);
	} else {
		if (channel >= KVASER_USB_MAX_NET_DEVICES) {
			FUNC0(&dev->intf->dev, "channel (%d) out of range.\n",
				channel);
			err = -EINVAL;
			goto end;
		}
		FUNC5
			(cmd, dev->card_data.hydra.channel_to_he[channel]);
	}
	FUNC6
				(cmd, FUNC4(dev));

	err = FUNC7(dev, cmd, FUNC3(cmd));
	if (err)
		goto end;

end:
	FUNC2(cmd);

	return err;
}