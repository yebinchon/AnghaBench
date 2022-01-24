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
struct net_device {scalar_t__ phydev; int /*<<< orphan*/  dev_addr; } ;
struct hns_nic_priv {int /*<<< orphan*/  state; int /*<<< orphan*/  service_timer; struct hnae_handle* ae_handle; } ;
struct hnae_handle {int q_num; TYPE_2__* dev; } ;
struct TYPE_4__ {TYPE_1__* ops; } ;
struct TYPE_3__ {int (* set_mac_addr ) (struct hnae_handle*,int /*<<< orphan*/ ) ;int (* start ) (struct hnae_handle*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  NIC_STATE_DOWN ; 
 scalar_t__ SERVICE_TIMER_HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,struct hns_nic_priv*) ; 
 int FUNC2 (struct hns_nic_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int FUNC4 (struct net_device*,int) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int) ; 
 struct hns_nic_priv* FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct hnae_handle*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct hnae_handle*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(struct net_device *ndev)
{
	struct hns_nic_priv *priv = FUNC7(ndev);
	struct hnae_handle *h = priv->ae_handle;
	int i, j;
	int ret;

	if (!FUNC13(NIC_STATE_DOWN, &priv->state))
		return 0;

	ret = FUNC2(priv);
	if (ret != 0) {
		FUNC6(ndev, "hns init irq failed! ret=%d\n", ret);
		return ret;
	}

	for (i = 0; i < h->q_num * 2; i++) {
		ret = FUNC4(ndev, i);
		if (ret)
			goto out_has_some_queues;
	}

	ret = h->dev->ops->set_mac_addr(h, ndev->dev_addr);
	if (ret)
		goto out_set_mac_addr_err;

	ret = h->dev->ops->start ? h->dev->ops->start(h) : 0;
	if (ret)
		goto out_start_err;

	if (ndev->phydev)
		FUNC9(ndev->phydev);

	FUNC0(NIC_STATE_DOWN, &priv->state);
	(void)FUNC5(&priv->service_timer, jiffies + SERVICE_TIMER_HZ);

	return 0;

out_start_err:
	FUNC8(ndev);
out_set_mac_addr_err:
out_has_some_queues:
	for (j = i - 1; j >= 0; j--)
		FUNC3(ndev, j);

	FUNC1(h->q_num, priv);
	FUNC10(NIC_STATE_DOWN, &priv->state);

	return ret;
}