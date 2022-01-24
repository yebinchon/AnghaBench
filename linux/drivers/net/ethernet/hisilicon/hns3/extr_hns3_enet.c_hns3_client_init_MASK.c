#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct pci_dev {int /*<<< orphan*/  dev; } ;
struct net_device {int /*<<< orphan*/  max_mtu; int /*<<< orphan*/ * netdev_ops; int /*<<< orphan*/  priv_flags; int /*<<< orphan*/  watchdog_timeo; } ;
struct hns3_nic_priv {struct hnae3_handle* ae_handle; int /*<<< orphan*/ * ring_data; int /*<<< orphan*/  state; int /*<<< orphan*/ * dev; scalar_t__ tx_timeout_count; struct net_device* netdev; } ;
struct TYPE_6__ {struct net_device* netdev; } ;
struct hnae3_handle {void* priv; TYPE_3__ kinfo; int /*<<< orphan*/  msg_enable; TYPE_2__* ae_algo; struct pci_dev* pdev; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* get_tqps_and_rss_info ) (struct hnae3_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DEFAULT_MSG_LEVEL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  HNS3_MAX_MTU ; 
 int /*<<< orphan*/  HNS3_NIC_STATE_DOWN ; 
 int /*<<< orphan*/  HNS3_NIC_STATE_INITED ; 
 int /*<<< orphan*/  HNS3_TX_TIMEOUT ; 
 int /*<<< orphan*/  IFF_UNICAST_FLT ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ *) ; 
 struct net_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  debug ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC6 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int FUNC8 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC9 (struct hns3_nic_priv*) ; 
 int FUNC10 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,int) ; 
 int FUNC12 (struct net_device*) ; 
 int FUNC13 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC14 (struct hns3_nic_priv*) ; 
 int FUNC15 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  hns3_nic_netdev_ops ; 
 int /*<<< orphan*/  FUNC16 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC18 (struct hns3_nic_priv*) ; 
 int /*<<< orphan*/  FUNC19 (struct net_device*) ; 
 struct hns3_nic_priv* FUNC20 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct net_device*) ; 
 scalar_t__ FUNC22 (struct hnae3_handle*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC24 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (struct hnae3_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct net_device*) ; 

__attribute__((used)) static int FUNC28(struct hnae3_handle *handle)
{
	struct pci_dev *pdev = handle->pdev;
	u16 alloc_tqps, max_rss_size;
	struct hns3_nic_priv *priv;
	struct net_device *netdev;
	int ret;

	handle->ae_algo->ops->get_tqps_and_rss_info(handle, &alloc_tqps,
						    &max_rss_size);
	netdev = FUNC1(sizeof(struct hns3_nic_priv), alloc_tqps);
	if (!netdev)
		return -ENOMEM;

	priv = FUNC20(netdev);
	priv->dev = &pdev->dev;
	priv->netdev = netdev;
	priv->ae_handle = handle;
	priv->tx_timeout_count = 0;
	FUNC25(HNS3_NIC_STATE_DOWN, &priv->state);

	handle->msg_enable = FUNC23(debug, DEFAULT_MSG_LEVEL);

	handle->kinfo.netdev = netdev;
	handle->priv = (void *)priv;

	FUNC11(netdev, true);

	FUNC17(netdev);

	netdev->watchdog_timeo = HNS3_TX_TIMEOUT;
	netdev->priv_flags |= IFF_UNICAST_FLT;
	netdev->netdev_ops = &hns3_nic_netdev_ops;
	FUNC0(netdev, &pdev->dev);
	FUNC7(netdev);

	/* Carrier off reporting is important to ethtool even BEFORE open */
	FUNC21(netdev);

	ret = FUNC8(priv);
	if (ret) {
		ret = -ENOMEM;
		goto out_get_ring_cfg;
	}

	ret = FUNC13(priv);
	if (ret) {
		ret = -ENOMEM;
		goto out_alloc_vector_data;
	}

	ret = FUNC15(priv);
	if (ret) {
		ret = -ENOMEM;
		goto out_init_vector_data;
	}

	ret = FUNC10(priv);
	if (ret) {
		ret = -ENOMEM;
		goto out_init_ring_data;
	}

	ret = FUNC12(netdev);
	if (ret)
		goto out_init_phy;

	ret = FUNC24(netdev);
	if (ret) {
		FUNC2(priv->dev, "probe register netdev fail!\n");
		goto out_reg_netdev_fail;
	}

	ret = FUNC4(handle);
	if (ret) {
		FUNC2(priv->dev, "hns3_client_start fail! ret=%d\n", ret);
		goto out_client_start;
	}

	FUNC6(handle);

	FUNC5(handle);

	/* MTU range: (ETH_MIN_MTU(kernel default) - 9702) */
	netdev->max_mtu = HNS3_MAX_MTU;

	FUNC25(HNS3_NIC_STATE_INITED, &priv->state);

	if (FUNC22(handle))
		FUNC9(priv);

	return ret;

out_client_start:
	FUNC27(netdev);
out_reg_netdev_fail:
	FUNC19(netdev);
out_init_phy:
	FUNC18(priv);
out_init_ring_data:
	FUNC16(priv);
out_init_vector_data:
	FUNC14(priv);
out_alloc_vector_data:
	priv->ring_data = NULL;
out_get_ring_cfg:
	priv->ae_handle = NULL;
	FUNC3(netdev);
	return ret;
}