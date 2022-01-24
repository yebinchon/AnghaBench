#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int u16 ;
struct TYPE_8__ {int /*<<< orphan*/  sysdbg_he; } ;
struct kvaser_usb_dev_card_data {int /*<<< orphan*/  ctrlmode_supported; int /*<<< orphan*/  capabilities; TYPE_3__ hydra; } ;
struct kvaser_usb {int nchannels; TYPE_5__* intf; struct kvaser_usb_dev_card_data card_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  value; int /*<<< orphan*/  cap_cmd; int /*<<< orphan*/  status; } ;
struct TYPE_7__ {int /*<<< orphan*/  cap_cmd; } ;
struct TYPE_6__ {int /*<<< orphan*/  cmd_no; } ;
struct kvaser_cmd {TYPE_4__ cap_res; TYPE_2__ cap_req; TYPE_1__ header; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  CAN_CTRLMODE_LISTENONLY ; 
 int /*<<< orphan*/  CAN_CTRLMODE_ONE_SHOT ; 
 int /*<<< orphan*/  CMD_GET_CAPABILITIES_REQ ; 
 int /*<<< orphan*/  CMD_GET_CAPABILITIES_RESP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KVASER_USB_CAP_BERR_CAP ; 
#define  KVASER_USB_HYDRA_CAP_CMD_ERR_REPORT 130 
#define  KVASER_USB_HYDRA_CAP_CMD_LISTEN_MODE 129 
#define  KVASER_USB_HYDRA_CAP_CMD_ONE_SHOT 128 
 int KVASER_USB_HYDRA_CAP_STAT_OK ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 struct kvaser_cmd* FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct kvaser_cmd*) ; 
 int /*<<< orphan*/  FUNC5 (struct kvaser_cmd*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvaser_usb*) ; 
 int /*<<< orphan*/  FUNC7 (struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct kvaser_usb*,int /*<<< orphan*/ ,struct kvaser_cmd*) ; 
 int FUNC10 (struct kvaser_usb*,struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(struct kvaser_usb *dev,
						  u16 cap_cmd_req, u16 *status)
{
	struct kvaser_usb_dev_card_data *card_data = &dev->card_data;
	struct kvaser_cmd *cmd;
	u32 value = 0;
	u32 mask = 0;
	u16 cap_cmd_res;
	int err;
	int i;

	cmd = FUNC3(1, sizeof(struct kvaser_cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	cmd->header.cmd_no = CMD_GET_CAPABILITIES_REQ;
	cmd->cap_req.cap_cmd = FUNC1(cap_cmd_req);

	FUNC7(cmd, card_data->hydra.sysdbg_he);
	FUNC8
				(cmd, FUNC6(dev));

	err = FUNC10(dev, cmd, FUNC5(cmd));
	if (err)
		goto end;

	err = FUNC9(dev, CMD_GET_CAPABILITIES_RESP, cmd);
	if (err)
		goto end;

	*status = FUNC11(cmd->cap_res.status);

	if (*status != KVASER_USB_HYDRA_CAP_STAT_OK)
		goto end;

	cap_cmd_res = FUNC11(cmd->cap_res.cap_cmd);
	switch (cap_cmd_res) {
	case KVASER_USB_HYDRA_CAP_CMD_LISTEN_MODE:
	case KVASER_USB_HYDRA_CAP_CMD_ERR_REPORT:
	case KVASER_USB_HYDRA_CAP_CMD_ONE_SHOT:
		value = FUNC12(cmd->cap_res.value);
		mask = FUNC12(cmd->cap_res.mask);
		break;
	default:
		FUNC2(&dev->intf->dev, "Unknown capability command %u\n",
			 cap_cmd_res);
		break;
	}

	for (i = 0; i < dev->nchannels; i++) {
		if (FUNC0(i) & (value & mask)) {
			switch (cap_cmd_res) {
			case KVASER_USB_HYDRA_CAP_CMD_LISTEN_MODE:
				card_data->ctrlmode_supported |=
						CAN_CTRLMODE_LISTENONLY;
				break;
			case KVASER_USB_HYDRA_CAP_CMD_ERR_REPORT:
				card_data->capabilities |=
						KVASER_USB_CAP_BERR_CAP;
				break;
			case KVASER_USB_HYDRA_CAP_CMD_ONE_SHOT:
				card_data->ctrlmode_supported |=
						CAN_CTRLMODE_ONE_SHOT;
				break;
			}
		}
	}

end:
	FUNC4(cmd);

	return err;
}