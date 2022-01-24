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
struct net_device {scalar_t__ reg_state; } ;
struct hns3_nic_priv {int /*<<< orphan*/  state; } ;
struct TYPE_2__ {struct net_device* netdev; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS3_NIC_STATE_INITED ; 
 scalar_t__ NETREG_UNINITIALIZED ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hnae3_handle*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC3 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int FUNC5 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int FUNC9 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,char*) ; 
 struct hns3_nic_priv* FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*) ; 

__attribute__((used)) static void FUNC16(struct hnae3_handle *handle, bool reset)
{
	struct net_device *netdev = handle->kinfo.netdev;
	struct hns3_nic_priv *priv = FUNC12(netdev);
	int ret;

	FUNC8(netdev);

	if (netdev->reg_state != NETREG_UNINITIALIZED)
		FUNC15(netdev);

	FUNC2(handle);

	FUNC10(netdev);

	if (!FUNC14(HNS3_NIC_STATE_INITED, &priv->state)) {
		FUNC13(netdev, "already uninitialized\n");
		goto out_netdev_free;
	}

	FUNC4(netdev, true);

	FUNC1(handle, true);

	FUNC6(priv);

	ret = FUNC5(priv);
	if (ret)
		FUNC11(netdev, "dealloc vector error\n");

	ret = FUNC9(priv);
	if (ret)
		FUNC11(netdev, "uninit ring error\n");

	FUNC7(priv);

	FUNC3(handle);

out_netdev_free:
	FUNC0(netdev);
}