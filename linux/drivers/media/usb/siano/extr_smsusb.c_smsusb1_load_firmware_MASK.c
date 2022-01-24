#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int default_mode; } ;

/* Variables and functions */
 int DEVICE_MODE_DVBT ; 
 int DEVICE_MODE_DVBT_BDA ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct firmware const*) ; 
 int FUNC7 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int) ; 
 char* FUNC9 (int,int) ; 
 char** smsusb1_fw_lkup ; 
 int FUNC10 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC12(struct usb_device *udev, int id, int board_id)
{
	const struct firmware *fw;
	u8 *fw_buffer;
	int rc, dummy;
	char *fw_filename;

	if (id < 0)
		id = FUNC8(board_id)->default_mode;

	if (id < DEVICE_MODE_DVBT || id > DEVICE_MODE_DVBT_BDA) {
		FUNC4("invalid firmware id specified %d\n", id);
		return -EINVAL;
	}

	fw_filename = FUNC9(id, board_id);

	rc = FUNC7(&fw, fw_filename, &udev->dev);
	if (rc < 0) {
		FUNC5("failed to open '%s' mode %d, trying again with default firmware\n",
			fw_filename, id);

		fw_filename = smsusb1_fw_lkup[id];
		rc = FUNC7(&fw, fw_filename, &udev->dev);
		if (rc < 0) {
			FUNC5("failed to open '%s' mode %d\n",
				 fw_filename, id);

			return rc;
		}
	}

	fw_buffer = FUNC1(fw->size, GFP_KERNEL);
	if (fw_buffer) {
		FUNC2(fw_buffer, fw->data, fw->size);

		rc = FUNC10(udev, FUNC11(udev, 2),
				  fw_buffer, fw->size, &dummy, 1000);

		FUNC3("sent %zu(%d) bytes, rc %d\n", fw->size, dummy, rc);

		FUNC0(fw_buffer);
	} else {
		FUNC4("failed to allocate firmware buffer\n");
		rc = -ENOMEM;
	}
	FUNC3("read FW %s, size=%zu\n", fw_filename, fw->size);

	FUNC6(fw);

	return rc;
}