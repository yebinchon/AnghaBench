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
struct hnae3_client {TYPE_1__* ops; } ;
struct hnae3_ae_dev {struct hclgevf_dev* priv; } ;
struct hclgevf_dev {int /*<<< orphan*/  nic; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int (* init_instance ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HCLGEVF_STATE_NIC_REGISTERED ; 
 int /*<<< orphan*/  FUNC0 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae3_client*,struct hnae3_ae_dev*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct hnae3_ae_dev *ae_dev,
					    struct hnae3_client *client)
{
	struct hclgevf_dev *hdev = ae_dev->priv;
	int ret;

	ret = client->ops->init_instance(&hdev->nic);
	if (ret)
		return ret;

	FUNC3(HCLGEVF_STATE_NIC_REGISTERED, &hdev->state);
	FUNC1(client, ae_dev, 1);

	if (FUNC2(&hdev->nic))
		FUNC0(hdev);

	return 0;
}