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
struct net_device {int dummy; } ;
struct hns3_nic_priv {int /*<<< orphan*/  ae_handle; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {struct net_device* netdev; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS3_NIC_STATE_INITED ; 
 int /*<<< orphan*/  FUNC0 (struct hnae3_handle*,int) ; 
 int FUNC1 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hns3_nic_priv*) ; 
 int FUNC6 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*) ; 
 struct hns3_nic_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct hnae3_handle *handle)
{
	struct net_device *netdev = handle->kinfo.netdev;
	struct hns3_nic_priv *priv = FUNC8(netdev);
	int ret;

	if (!FUNC10(HNS3_NIC_STATE_INITED, &priv->state)) {
		FUNC9(netdev, "already uninitialized\n");
		return 0;
	}

	FUNC0(handle, true);
	FUNC4(priv->ae_handle);

	FUNC2(priv);

	FUNC5(priv);

	ret = FUNC1(priv);
	if (ret)
		FUNC7(netdev, "dealloc vector error\n");

	ret = FUNC6(priv);
	if (ret)
		FUNC7(netdev, "uninit ring error\n");

	FUNC3(priv);

	return ret;
}