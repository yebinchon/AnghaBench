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
typedef  int u32 ;
struct kvaser_usb_dev_card_data {int /*<<< orphan*/  ctrlmode_supported; int /*<<< orphan*/  capabilities; } ;
struct kvaser_usb {int /*<<< orphan*/ * cfg; TYPE_4__* intf; void* fw_version; struct kvaser_usb_dev_card_data card_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  sw_flags; int /*<<< orphan*/  sw_version; } ;
struct TYPE_6__ {int use_ext_cmd; } ;
struct TYPE_5__ {int /*<<< orphan*/  cmd_no; } ;
struct kvaser_cmd {TYPE_3__ sw_detail_res; TYPE_2__ sw_detail_req; TYPE_1__ header; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_CTRLMODE_FD ; 
 int /*<<< orphan*/  CAN_CTRLMODE_FD_NON_ISO ; 
 int /*<<< orphan*/  CMD_GET_SOFTWARE_DETAILS_REQ ; 
 int /*<<< orphan*/  CMD_GET_SOFTWARE_DETAILS_RESP ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KVASER_USB_CAP_EXT_CAP ; 
 int /*<<< orphan*/  KVASER_USB_HYDRA_CAP_EXT_CMD ; 
 int /*<<< orphan*/  KVASER_USB_HYDRA_HE_ADDRESS_ILLEGAL ; 
 int KVASER_USB_HYDRA_SW_FLAG_CANFD ; 
 int KVASER_USB_HYDRA_SW_FLAG_EXT_CAP ; 
 int KVASER_USB_HYDRA_SW_FLAG_EXT_CMD ; 
 int KVASER_USB_HYDRA_SW_FLAG_FREQ_80M ; 
 int KVASER_USB_HYDRA_SW_FLAG_FW_BAD ; 
 int KVASER_USB_HYDRA_SW_FLAG_FW_BETA ; 
 int KVASER_USB_HYDRA_SW_FLAG_NONISO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct kvaser_cmd* FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct kvaser_cmd*) ; 
 int /*<<< orphan*/  FUNC4 (struct kvaser_cmd*) ; 
 int /*<<< orphan*/  kvaser_usb_hydra_dev_cfg_flexc ; 
 int /*<<< orphan*/  kvaser_usb_hydra_dev_cfg_kcan ; 
 int /*<<< orphan*/  FUNC5 (struct kvaser_usb*) ; 
 int /*<<< orphan*/  FUNC6 (struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct kvaser_usb*,int /*<<< orphan*/ ,struct kvaser_cmd*) ; 
 int FUNC9 (struct kvaser_usb*,struct kvaser_cmd*,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct kvaser_usb *dev)
{
	struct kvaser_cmd *cmd;
	int err;
	u32 flags;
	struct kvaser_usb_dev_card_data *card_data = &dev->card_data;

	cmd = FUNC2(1, sizeof(struct kvaser_cmd), GFP_KERNEL);
	if (!cmd)
		return -ENOMEM;

	cmd->header.cmd_no = CMD_GET_SOFTWARE_DETAILS_REQ;
	cmd->sw_detail_req.use_ext_cmd = 1;
	FUNC6
				(cmd, KVASER_USB_HYDRA_HE_ADDRESS_ILLEGAL);

	FUNC7
				(cmd, FUNC5(dev));

	err = FUNC9(dev, cmd, FUNC4(cmd));
	if (err)
		goto end;

	err = FUNC8(dev, CMD_GET_SOFTWARE_DETAILS_RESP,
					cmd);
	if (err)
		goto end;

	dev->fw_version = FUNC10(cmd->sw_detail_res.sw_version);
	flags = FUNC10(cmd->sw_detail_res.sw_flags);

	if (flags & KVASER_USB_HYDRA_SW_FLAG_FW_BAD) {
		FUNC0(&dev->intf->dev,
			"Bad firmware, device refuse to run!\n");
		err = -EINVAL;
		goto end;
	}

	if (flags & KVASER_USB_HYDRA_SW_FLAG_FW_BETA)
		FUNC1(&dev->intf->dev, "Beta firmware in use\n");

	if (flags & KVASER_USB_HYDRA_SW_FLAG_EXT_CAP)
		card_data->capabilities |= KVASER_USB_CAP_EXT_CAP;

	if (flags & KVASER_USB_HYDRA_SW_FLAG_EXT_CMD)
		card_data->capabilities |= KVASER_USB_HYDRA_CAP_EXT_CMD;

	if (flags & KVASER_USB_HYDRA_SW_FLAG_CANFD)
		card_data->ctrlmode_supported |= CAN_CTRLMODE_FD;

	if (flags & KVASER_USB_HYDRA_SW_FLAG_NONISO)
		card_data->ctrlmode_supported |= CAN_CTRLMODE_FD_NON_ISO;

	if (flags &  KVASER_USB_HYDRA_SW_FLAG_FREQ_80M)
		dev->cfg = &kvaser_usb_hydra_dev_cfg_kcan;
	else
		dev->cfg = &kvaser_usb_hydra_dev_cfg_flexc;

end:
	FUNC3(cmd);

	return err;
}