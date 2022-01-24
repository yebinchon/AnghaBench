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
struct hclgevf_dev {int /*<<< orphan*/  roce; int /*<<< orphan*/  nic_client; int /*<<< orphan*/  roce_client; } ;
struct TYPE_2__ {int (* init_instance ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int FUNC0 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hclgevf_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct hnae3_client*,struct hnae3_ae_dev*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct hnae3_ae_dev *ae_dev,
					     struct hnae3_client *client)
{
	struct hclgevf_dev *hdev = ae_dev->priv;
	int ret;

	if (!FUNC1(hdev) || !hdev->roce_client ||
	    !hdev->nic_client)
		return 0;

	ret = FUNC0(hdev);
	if (ret)
		return ret;

	ret = client->ops->init_instance(&hdev->roce);
	if (ret)
		return ret;

	FUNC2(client, ae_dev, 1);

	return 0;
}