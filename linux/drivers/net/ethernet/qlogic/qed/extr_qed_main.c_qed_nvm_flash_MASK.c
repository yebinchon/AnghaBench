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
typedef  int u32 ;
struct qed_dev {TYPE_1__* pdev; } ;
struct firmware {int size; int /*<<< orphan*/ * data; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_dev*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_dev*,int /*<<< orphan*/ ,char*,char const*,int /*<<< orphan*/ *,int) ; 
 int EINVAL ; 
 int FW_MSG_CODE_MASK ; 
#define  FW_MSG_CODE_NVM_OK 135 
#define  FW_MSG_CODE_NVM_PUT_FILE_FINISH_OK 134 
#define  FW_MSG_CODE_OK 133 
#define  FW_MSG_CODE_PHY_OK 132 
 int /*<<< orphan*/  NETIF_MSG_DRV ; 
#define  QED_NVM_FLASH_CMD_FILE_DATA 131 
#define  QED_NVM_FLASH_CMD_FILE_START 130 
#define  QED_NVM_FLASH_CMD_NVM_CFG_ID 129 
#define  QED_NVM_FLASH_CMD_NVM_CHANGE 128 
 scalar_t__ FUNC2 (struct qed_dev*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct qed_dev*,int /*<<< orphan*/  const**) ; 
 int FUNC4 (struct qed_dev*,int /*<<< orphan*/  const**,int*) ; 
 int FUNC5 (struct qed_dev*,int /*<<< orphan*/  const**,int*) ; 
 int FUNC6 (struct qed_dev*,int /*<<< orphan*/  const**,int*) ; 
 int FUNC7 (struct qed_dev*,struct firmware const*,int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC8 (struct firmware const*) ; 
 int FUNC9 (struct firmware const**,char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct qed_dev *cdev, const char *name)
{
	const struct firmware *image;
	const u8 *data, *data_end;
	u32 cmd_type;
	int rc;

	rc = FUNC9(&image, name, &cdev->pdev->dev);
	if (rc) {
		FUNC0(cdev, "Failed to find '%s'\n", name);
		return rc;
	}

	FUNC1(cdev, NETIF_MSG_DRV,
		   "Flashing '%s' - firmware's data at %p, size is %08x\n",
		   name, image->data, (u32)image->size);
	data = image->data;
	data_end = data + image->size;

	rc = FUNC7(cdev, image, &data);
	if (rc)
		goto exit;

	while (data < data_end) {
		bool check_resp = false;

		/* Parse the actual command */
		cmd_type = *((u32 *)data);
		switch (cmd_type) {
		case QED_NVM_FLASH_CMD_FILE_DATA:
			rc = FUNC5(cdev, &data,
							   &check_resp);
			break;
		case QED_NVM_FLASH_CMD_FILE_START:
			rc = FUNC6(cdev, &data,
							    &check_resp);
			break;
		case QED_NVM_FLASH_CMD_NVM_CHANGE:
			rc = FUNC4(cdev, &data,
							&check_resp);
			break;
		case QED_NVM_FLASH_CMD_NVM_CFG_ID:
			rc = FUNC3(cdev, &data);
			break;
		default:
			FUNC0(cdev, "Unknown command %08x\n", cmd_type);
			rc = -EINVAL;
			goto exit;
		}

		if (rc) {
			FUNC0(cdev, "Command %08x failed\n", cmd_type);
			goto exit;
		}

		/* Check response if needed */
		if (check_resp) {
			u32 mcp_response = 0;

			if (FUNC2(cdev, (u8 *)&mcp_response)) {
				FUNC0(cdev, "Failed getting MCP response\n");
				rc = -EINVAL;
				goto exit;
			}

			switch (mcp_response & FW_MSG_CODE_MASK) {
			case FW_MSG_CODE_OK:
			case FW_MSG_CODE_NVM_OK:
			case FW_MSG_CODE_NVM_PUT_FILE_FINISH_OK:
			case FW_MSG_CODE_PHY_OK:
				break;
			default:
				FUNC0(cdev, "MFW returns error: %08x\n",
				       mcp_response);
				rc = -EINVAL;
				goto exit;
			}
		}
	}

exit:
	FUNC8(image);

	return rc;
}