#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_8__ {int /*<<< orphan*/  lock; scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;
struct TYPE_7__ {int /*<<< orphan*/  lock; scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;
struct TYPE_9__ {TYPE_2__ csq; TYPE_1__ crq; } ;
struct TYPE_11__ {TYPE_3__ cmq; } ;
struct hclge_dev {int /*<<< orphan*/  state; TYPE_4__* pdev; int /*<<< orphan*/  fw_version; TYPE_5__ hw; } ;
struct TYPE_10__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  HCLGE_STATE_CMD_DISABLE ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE0_MASK ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE0_SHIFT ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE1_MASK ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE1_SHIFT ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE2_MASK ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE2_SHIFT ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE3_MASK ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE3_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (struct hclge_dev*) ; 
 scalar_t__ FUNC7 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

int FUNC14(struct hclge_dev *hdev)
{
	u32 version;
	int ret;

	FUNC11(&hdev->hw.cmq.csq.lock);
	FUNC10(&hdev->hw.cmq.crq.lock);

	hdev->hw.cmq.csq.next_to_clean = 0;
	hdev->hw.cmq.csq.next_to_use = 0;
	hdev->hw.cmq.crq.next_to_clean = 0;
	hdev->hw.cmq.crq.next_to_use = 0;

	FUNC4(&hdev->hw);

	FUNC12(&hdev->hw.cmq.crq.lock);
	FUNC13(&hdev->hw.cmq.csq.lock);

	FUNC0(HCLGE_STATE_CMD_DISABLE, &hdev->state);

	/* Check if there is new reset pending, because the higher level
	 * reset may happen when lower level reset is being processed.
	 */
	if ((FUNC7(hdev))) {
		ret = -EBUSY;
		goto err_cmd_init;
	}

	ret = FUNC5(&hdev->hw, &version);
	if (ret) {
		FUNC1(&hdev->pdev->dev,
			"firmware version query failed %d\n", ret);
		goto err_cmd_init;
	}
	hdev->fw_version = version;

	FUNC2(&hdev->pdev->dev, "The firmware version is %lu.%lu.%lu.%lu\n",
		 FUNC8(version, HNAE3_FW_VERSION_BYTE3_MASK,
				 HNAE3_FW_VERSION_BYTE3_SHIFT),
		 FUNC8(version, HNAE3_FW_VERSION_BYTE2_MASK,
				 HNAE3_FW_VERSION_BYTE2_SHIFT),
		 FUNC8(version, HNAE3_FW_VERSION_BYTE1_MASK,
				 HNAE3_FW_VERSION_BYTE1_SHIFT),
		 FUNC8(version, HNAE3_FW_VERSION_BYTE0_MASK,
				 HNAE3_FW_VERSION_BYTE0_SHIFT));

	/* ask the firmware to enable some features, driver can work without
	 * it.
	 */
	ret = FUNC6(hdev);
	if (ret)
		FUNC3(&hdev->pdev->dev,
			 "Firmware compatible features not enabled(%d).\n",
			 ret);

	return 0;

err_cmd_init:
	FUNC9(HCLGE_STATE_CMD_DISABLE, &hdev->state);

	return ret;
}