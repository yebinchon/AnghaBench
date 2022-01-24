#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct hnae3_client {TYPE_3__* ops; } ;
struct hnae3_ae_dev {TYPE_2__* pdev; struct hclge_dev* priv; } ;
struct TYPE_9__ {struct hnae3_client* client; } ;
struct hclge_vport {TYPE_4__ roce; } ;
struct TYPE_6__ {int reset_cnt; } ;
struct hclge_dev {struct hnae3_client* roce_client; int /*<<< orphan*/  state; TYPE_1__ rst_stats; int /*<<< orphan*/  nic_client; } ;
struct TYPE_8__ {int (* init_instance ) (TYPE_4__*) ;int /*<<< orphan*/  (* uninit_instance ) (TYPE_4__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  HCLGE_STATE_ROCE_REGISTERED ; 
 int /*<<< orphan*/  HCLGE_STATE_RST_HANDLING ; 
 int /*<<< orphan*/  HCLGE_WAIT_RESET_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct hclge_dev*,int) ; 
 int FUNC3 (struct hclge_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct hnae3_client*,struct hnae3_ae_dev*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct hnae3_ae_dev *ae_dev,
					   struct hclge_vport *vport)
{
	struct hnae3_client *client = vport->roce.client;
	struct hclge_dev *hdev = ae_dev->priv;
	int rst_cnt;
	int ret;

	if (!FUNC4(hdev) || !hdev->roce_client ||
	    !hdev->nic_client)
		return 0;

	client = hdev->roce_client;
	ret = FUNC3(vport);
	if (ret)
		return ret;

	rst_cnt = hdev->rst_stats.reset_cnt;
	ret = client->ops->init_instance(&vport->roce);
	if (ret)
		return ret;

	FUNC7(HCLGE_STATE_ROCE_REGISTERED, &hdev->state);
	if (FUNC10(HCLGE_STATE_RST_HANDLING, &hdev->state) ||
	    rst_cnt != hdev->rst_stats.reset_cnt) {
		ret = -EBUSY;
		goto init_roce_err;
	}

	/* Enable roce ras interrupts */
	ret = FUNC2(hdev, true);
	if (ret) {
		FUNC1(&ae_dev->pdev->dev,
			"fail(%d) to enable roce ras interrupts\n", ret);
		goto init_roce_err;
	}

	FUNC5(client, ae_dev, 1);

	return 0;

init_roce_err:
	FUNC0(HCLGE_STATE_ROCE_REGISTERED, &hdev->state);
	while (FUNC10(HCLGE_STATE_RST_HANDLING, &hdev->state))
		FUNC6(HCLGE_WAIT_RESET_DONE);

	hdev->roce_client->ops->uninit_instance(&vport->roce, 0);

	return ret;
}