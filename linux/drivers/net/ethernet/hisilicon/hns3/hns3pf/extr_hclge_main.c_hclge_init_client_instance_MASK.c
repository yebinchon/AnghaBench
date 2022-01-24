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
struct hnae3_client {int type; } ;
struct hnae3_ae_dev {struct hclge_dev* priv; } ;
struct TYPE_4__ {struct hnae3_client* client; } ;
struct TYPE_3__ {struct hnae3_client* client; } ;
struct hclge_vport {TYPE_2__ roce; TYPE_1__ nic; } ;
struct hclge_dev {int num_vmdq_vport; struct hnae3_client* roce_client; struct hnae3_client* nic_client; struct hclge_vport* vport; } ;

/* Variables and functions */
 int EINVAL ; 
#define  HNAE3_CLIENT_KNIC 129 
#define  HNAE3_CLIENT_ROCE 128 
 int FUNC0 (struct hnae3_ae_dev*,struct hclge_vport*) ; 
 int FUNC1 (struct hnae3_ae_dev*,struct hclge_vport*) ; 
 int /*<<< orphan*/  FUNC2 (struct hclge_dev*) ; 

__attribute__((used)) static int FUNC3(struct hnae3_client *client,
				      struct hnae3_ae_dev *ae_dev)
{
	struct hclge_dev *hdev = ae_dev->priv;
	struct hclge_vport *vport;
	int i, ret;

	for (i = 0; i <  hdev->num_vmdq_vport + 1; i++) {
		vport = &hdev->vport[i];

		switch (client->type) {
		case HNAE3_CLIENT_KNIC:

			hdev->nic_client = client;
			vport->nic.client = client;
			ret = FUNC0(ae_dev, vport);
			if (ret)
				goto clear_nic;

			ret = FUNC1(ae_dev, vport);
			if (ret)
				goto clear_roce;

			break;
		case HNAE3_CLIENT_ROCE:
			if (FUNC2(hdev)) {
				hdev->roce_client = client;
				vport->roce.client = client;
			}

			ret = FUNC1(ae_dev, vport);
			if (ret)
				goto clear_roce;

			break;
		default:
			return -EINVAL;
		}
	}

	return 0;

clear_nic:
	hdev->nic_client = NULL;
	vport->nic.client = NULL;
	return ret;
clear_roce:
	hdev->roce_client = NULL;
	vport->roce.client = NULL;
	return ret;
}