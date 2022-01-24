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
struct hns_nic_priv {struct hnae_handle* ae_handle; int /*<<< orphan*/ * ring_data; int /*<<< orphan*/  dev; int /*<<< orphan*/  port_id; int /*<<< orphan*/  fwnode; TYPE_1__* netdev; } ;
struct hnae_handle {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct hnae_handle* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct hnae_handle*) ; 
 int FUNC5 (struct net_device*,struct hnae_handle*) ; 
 int FUNC6 (struct hns_nic_priv*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct hns_nic_priv*) ; 
 struct hns_nic_priv* FUNC9 (struct net_device*) ; 
 int FUNC10 (struct net_device*) ; 

__attribute__((used)) static int FUNC11(struct net_device *ndev)
{
	struct hns_nic_priv *priv = FUNC9(ndev);
	struct hnae_handle *h;
	int ret;

	h = FUNC3(&priv->netdev->dev,
			    priv->fwnode, priv->port_id, NULL);
	if (FUNC0(h)) {
		ret = -ENODEV;
		FUNC1(priv->dev, "has not handle, register notifier!\n");
		goto out;
	}
	priv->ae_handle = h;

	ret = FUNC5(ndev, h);
	if (ret) {
		FUNC2(priv->dev, "probe phy device fail!\n");
		goto out_init_phy;
	}

	ret = FUNC6(priv);
	if (ret) {
		ret = -ENOMEM;
		goto out_init_ring_data;
	}

	FUNC7(ndev);

	ret = FUNC10(ndev);
	if (ret) {
		FUNC2(priv->dev, "probe register netdev fail!\n");
		goto out_reg_ndev_fail;
	}
	return 0;

out_reg_ndev_fail:
	FUNC8(priv);
	priv->ring_data = NULL;
out_init_phy:
out_init_ring_data:
	FUNC4(priv->ae_handle);
	priv->ae_handle = NULL;
out:
	return ret;
}