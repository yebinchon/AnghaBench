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
struct mei_nfc_reply {int /*<<< orphan*/  data; } ;
struct mei_nfc_if_version {int /*<<< orphan*/  radio_type; int /*<<< orphan*/  vendor_id; int /*<<< orphan*/  fw_ivn; } ;
struct mei_nfc_cmd {int data_size; int /*<<< orphan*/  sub_command; int /*<<< orphan*/  command; } ;
struct mei_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  device_lock; } ;
struct mei_cl {struct mei_device* dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MEI_CL_IO_TX_BLOCKING ; 
 int /*<<< orphan*/  MEI_NFC_CMD_MAINTENANCE ; 
 int /*<<< orphan*/  MEI_NFC_SUBCMD_IF_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct mei_cl*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct mei_cl*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mei_nfc_reply*) ; 
 struct mei_nfc_reply* FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mei_nfc_if_version*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct mei_cl *cl,
			      struct mei_nfc_if_version *ver)
{
	struct mei_device *bus;
	struct mei_nfc_cmd cmd = {
		.command = MEI_NFC_CMD_MAINTENANCE,
		.data_size = 1,
		.sub_command = MEI_NFC_SUBCMD_IF_VERSION,
	};
	struct mei_nfc_reply *reply = NULL;
	size_t if_version_length;
	int bytes_recv, ret;

	bus = cl->dev;

	FUNC0(FUNC8(&bus->device_lock));

	ret = FUNC2(cl, (u8 *)&cmd, sizeof(struct mei_nfc_cmd),
			    MEI_CL_IO_TX_BLOCKING);
	if (ret < 0) {
		FUNC3(bus->dev, "Could not send IF version cmd\n");
		return ret;
	}

	/* to be sure on the stack we alloc memory */
	if_version_length = sizeof(struct mei_nfc_reply) +
		sizeof(struct mei_nfc_if_version);

	reply = FUNC6(if_version_length, GFP_KERNEL);
	if (!reply)
		return -ENOMEM;

	ret = 0;
	bytes_recv = FUNC1(cl, (u8 *)reply, if_version_length, 0, 0);
	if (bytes_recv < 0 || (size_t)bytes_recv < if_version_length) {
		FUNC3(bus->dev, "Could not read IF version\n");
		ret = -EIO;
		goto err;
	}

	FUNC7(ver, reply->data, sizeof(struct mei_nfc_if_version));

	FUNC4(bus->dev, "NFC MEI VERSION: IVN 0x%x Vendor ID 0x%x Type 0x%x\n",
		ver->fw_ivn, ver->vendor_id, ver->radio_type);

err:
	FUNC5(reply);
	return ret;
}