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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct kvaser_usb {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmd_no; } ;
struct kvaser_cmd {TYPE_1__ map_ch_req; TYPE_2__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_MAP_CHANNEL_REQ ; 
 int /*<<< orphan*/  CMD_MAP_CHANNEL_RESP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KVASER_USB_HYDRA_HE_ADDRESS_ROUTER ; 
 struct kvaser_cmd* FUNC0 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvaser_cmd*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvaser_cmd*) ; 
 int FUNC3 (struct kvaser_usb*,struct kvaser_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct kvaser_usb*,int /*<<< orphan*/ ,struct kvaser_cmd*) ; 
 int FUNC7 (struct kvaser_usb*,struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC9(struct kvaser_usb *dev, u16 transid,
					u8 channel, const char *name)
{
	struct kvaser_cmd *cmd;
	int err;

	cmd = FUNC0(1, sizeof(struct kvaser_cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	FUNC8(cmd->map_ch_req.name, name);
	cmd->header.cmd_no = CMD_MAP_CHANNEL_REQ;
	FUNC4
				(cmd, KVASER_USB_HYDRA_HE_ADDRESS_ROUTER);
	cmd->map_ch_req.channel = channel;

	FUNC5(cmd, transid);

	err = FUNC7(dev, cmd, FUNC2(cmd));
	if (err)
		goto end;

	err = FUNC6(dev, CMD_MAP_CHANNEL_RESP, cmd);
	if (err)
		goto end;

	err = FUNC3(dev, cmd);
	if (err)
		goto end;

end:
	FUNC1(cmd);

	return err;
}