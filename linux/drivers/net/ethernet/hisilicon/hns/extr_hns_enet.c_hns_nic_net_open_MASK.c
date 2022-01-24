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
struct net_device {int dummy; } ;
struct hns_nic_priv {scalar_t__ link; int /*<<< orphan*/  state; struct hnae_handle* ae_handle; } ;
struct hnae_handle {int /*<<< orphan*/  q_num; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  NIC_STATE_TESTING ; 
 int FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int) ; 
 struct hns_nic_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *ndev)
{
	struct hns_nic_priv *priv = FUNC2(ndev);
	struct hnae_handle *h = priv->ae_handle;
	int ret;

	if (FUNC6(NIC_STATE_TESTING, &priv->state))
		return -EBUSY;

	priv->link = 0;
	FUNC3(ndev);

	ret = FUNC5(ndev, h->q_num);
	if (ret < 0) {
		FUNC1(ndev, "netif_set_real_num_tx_queues fail, ret=%d!\n",
			   ret);
		return ret;
	}

	ret = FUNC4(ndev, h->q_num);
	if (ret < 0) {
		FUNC1(ndev,
			   "netif_set_real_num_rx_queues fail, ret=%d!\n", ret);
		return ret;
	}

	ret = FUNC0(ndev);
	if (ret) {
		FUNC1(ndev,
			   "hns net up fail, ret=%d!\n", ret);
		return ret;
	}

	return 0;
}