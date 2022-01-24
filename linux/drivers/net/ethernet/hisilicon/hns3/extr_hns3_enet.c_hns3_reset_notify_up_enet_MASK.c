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
struct hns3_nic_priv {int /*<<< orphan*/  state; } ;
struct hnae3_knic_private_info {int /*<<< orphan*/  netdev; } ;
struct hnae3_handle {struct hnae3_knic_private_info kinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS3_NIC_STATE_RESETTING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct hns3_nic_priv* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct hnae3_handle *handle)
{
	struct hnae3_knic_private_info *kinfo = &handle->kinfo;
	struct hns3_nic_priv *priv = FUNC3(kinfo->netdev);
	int ret = 0;

	FUNC0(HNS3_NIC_STATE_RESETTING, &priv->state);

	if (FUNC4(kinfo->netdev)) {
		ret = FUNC1(kinfo->netdev);
		if (ret) {
			FUNC5(HNS3_NIC_STATE_RESETTING, &priv->state);
			FUNC2(kinfo->netdev,
				   "net up fail, ret=%d!\n", ret);
			return ret;
		}
	}

	return ret;
}