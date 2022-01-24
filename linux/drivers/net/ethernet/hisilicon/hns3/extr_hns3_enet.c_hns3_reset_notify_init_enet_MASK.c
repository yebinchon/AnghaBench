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
struct hns3_nic_priv {int /*<<< orphan*/  state; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {struct net_device* netdev; } ;
struct hnae3_handle {TYPE_1__ kinfo; } ;

/* Variables and functions */
 int /*<<< orphan*/  HNS3_NIC_STATE_INITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (struct hnae3_handle*) ; 
 int FUNC2 (struct hns3_nic_priv*) ; 
 int FUNC3 (struct hns3_nic_priv*) ; 
 int FUNC4 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct hns3_nic_priv*) ; 
 int FUNC6 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC8 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct hns3_nic_priv*) ; 
 struct hns3_nic_priv* FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct hnae3_handle *handle)
{
	struct net_device *netdev = handle->kinfo.netdev;
	struct hns3_nic_priv *priv = FUNC11(netdev);
	int ret;

	/* Carrier off reporting is important to ethtool even BEFORE open */
	FUNC12(netdev);

	ret = FUNC2(priv);
	if (ret)
		return ret;

	ret = FUNC4(priv);
	if (ret)
		goto err_put_ring;

	FUNC9(priv);

	ret = FUNC6(priv);
	if (ret)
		goto err_dealloc_vector;

	ret = FUNC3(priv);
	if (ret)
		goto err_uninit_vector;

	ret = FUNC1(handle);
	if (ret) {
		FUNC0(priv->dev, "hns3_client_start fail! ret=%d\n", ret);
		goto err_uninit_ring;
	}

	FUNC13(HNS3_NIC_STATE_INITED, &priv->state);

	return ret;

err_uninit_ring:
	FUNC10(priv);
err_uninit_vector:
	FUNC7(priv);
err_dealloc_vector:
	FUNC5(priv);
err_put_ring:
	FUNC8(priv);

	return ret;
}