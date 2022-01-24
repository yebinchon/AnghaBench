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
struct hnae3_client {TYPE_4__* ops; } ;
struct hnae3_ae_dev {TYPE_2__* pdev; struct hclge_dev* priv; } ;
struct TYPE_11__ {struct hnae3_client* client; } ;
struct hclge_vport {TYPE_5__ nic; } ;
struct TYPE_7__ {int reset_cnt; } ;
struct hclge_dev {int /*<<< orphan*/  state; TYPE_3__* vport; TYPE_1__ rst_stats; } ;
struct TYPE_10__ {int (* init_instance ) (TYPE_5__*) ;int /*<<< orphan*/  (* uninit_instance ) (TYPE_5__*,int /*<<< orphan*/ ) ;} ;
struct TYPE_9__ {int /*<<< orphan*/  nic; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  HCLGE_STATE_NIC_REGISTERED ; 
 int /*<<< orphan*/  HCLGE_STATE_RST_HANDLING ; 
 int /*<<< orphan*/  HCLGE_WAIT_RESET_DONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (struct hclge_dev*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hclge_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct hnae3_client*,struct hnae3_ae_dev*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct hnae3_ae_dev *ae_dev,
					  struct hclge_vport *vport)
{
	struct hnae3_client *client = vport->nic.client;
	struct hclge_dev *hdev = ae_dev->priv;
	int rst_cnt;
	int ret;

	rst_cnt = hdev->rst_stats.reset_cnt;
	ret = client->ops->init_instance(&vport->nic);
	if (ret)
		return ret;

	FUNC7(HCLGE_STATE_NIC_REGISTERED, &hdev->state);
	if (FUNC10(HCLGE_STATE_RST_HANDLING, &hdev->state) ||
	    rst_cnt != hdev->rst_stats.reset_cnt) {
		ret = -EBUSY;
		goto init_nic_err;
	}

	/* Enable nic hw error interrupts */
	ret = FUNC2(hdev, true);
	if (ret) {
		FUNC1(&ae_dev->pdev->dev,
			"fail(%d) to enable hw error interrupts\n", ret);
		goto init_nic_err;
	}

	FUNC4(client, ae_dev, 1);

	if (FUNC6(&hdev->vport->nic))
		FUNC3(hdev);

	return ret;

init_nic_err:
	FUNC0(HCLGE_STATE_NIC_REGISTERED, &hdev->state);
	while (FUNC10(HCLGE_STATE_RST_HANDLING, &hdev->state))
		FUNC5(HCLGE_WAIT_RESET_DONE);

	client->ops->uninit_instance(&vport->nic, 0);

	return ret;
}