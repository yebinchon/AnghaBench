#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_10__ {int /*<<< orphan*/  lock; scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;
struct TYPE_9__ {int /*<<< orphan*/  lock; scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;
struct TYPE_11__ {TYPE_3__ csq; TYPE_2__ crq; } ;
struct TYPE_13__ {TYPE_4__ cmq; } ;
struct TYPE_8__ {int /*<<< orphan*/  count; scalar_t__ tail; scalar_t__ head; struct hclgevf_dev* hdev; } ;
struct hclgevf_dev {int /*<<< orphan*/  state; TYPE_5__* pdev; int /*<<< orphan*/  fw_version; TYPE_6__ hw; TYPE_1__ arq; } ;
struct TYPE_12__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  HCLGEVF_STATE_CMD_DISABLE ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE0_MASK ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE0_SHIFT ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE1_MASK ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE1_SHIFT ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE2_MASK ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE2_SHIFT ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE3_MASK ; 
 int /*<<< orphan*/  HNAE3_FW_VERSION_BYTE3_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int FUNC5 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct hclgevf_dev *hdev)
{
	u32 version;
	int ret;

	FUNC10(&hdev->hw.cmq.csq.lock);
	FUNC9(&hdev->hw.cmq.crq.lock);

	/* initialize the pointers of async rx queue of mailbox */
	hdev->arq.hdev = hdev;
	hdev->arq.head = 0;
	hdev->arq.tail = 0;
	FUNC0(&hdev->arq.count, 0);
	hdev->hw.cmq.csq.next_to_clean = 0;
	hdev->hw.cmq.csq.next_to_use = 0;
	hdev->hw.cmq.crq.next_to_clean = 0;
	hdev->hw.cmq.crq.next_to_use = 0;

	FUNC4(&hdev->hw);

	FUNC11(&hdev->hw.cmq.crq.lock);
	FUNC12(&hdev->hw.cmq.csq.lock);

	FUNC1(HCLGEVF_STATE_CMD_DISABLE, &hdev->state);

	/* Check if there is new reset pending, because the higher level
	 * reset may happen when lower level reset is being processed.
	 */
	if (FUNC6(hdev)) {
		ret = -EBUSY;
		goto err_cmd_init;
	}

	/* get firmware version */
	ret = FUNC5(&hdev->hw, &version);
	if (ret) {
		FUNC2(&hdev->pdev->dev,
			"failed(%d) to query firmware version\n", ret);
		goto err_cmd_init;
	}
	hdev->fw_version = version;

	FUNC3(&hdev->pdev->dev, "The firmware version is %lu.%lu.%lu.%lu\n",
		 FUNC7(version, HNAE3_FW_VERSION_BYTE3_MASK,
				 HNAE3_FW_VERSION_BYTE3_SHIFT),
		 FUNC7(version, HNAE3_FW_VERSION_BYTE2_MASK,
				 HNAE3_FW_VERSION_BYTE2_SHIFT),
		 FUNC7(version, HNAE3_FW_VERSION_BYTE1_MASK,
				 HNAE3_FW_VERSION_BYTE1_SHIFT),
		 FUNC7(version, HNAE3_FW_VERSION_BYTE0_MASK,
				 HNAE3_FW_VERSION_BYTE0_SHIFT));

	return 0;

err_cmd_init:
	FUNC8(HCLGEVF_STATE_CMD_DISABLE, &hdev->state);

	return ret;
}