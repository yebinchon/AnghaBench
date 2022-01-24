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
struct net_device {scalar_t__ phydev; } ;
struct hns_nic_priv {scalar_t__ ring_data; TYPE_2__* ae_handle; scalar_t__ link; int /*<<< orphan*/  service_timer; int /*<<< orphan*/  state; } ;
struct hnae_ae_ops {int /*<<< orphan*/  (* stop ) (TYPE_2__*) ;} ;
struct TYPE_4__ {int q_num; TYPE_1__* dev; } ;
struct TYPE_3__ {struct hnae_ae_ops* ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  NIC_STATE_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct hns_nic_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct net_device *ndev)
{
	int i;
	struct hnae_ae_ops *ops;
	struct hns_nic_priv *priv = FUNC3(ndev);

	if (FUNC9(NIC_STATE_DOWN, &priv->state))
		return;

	(void)FUNC0(&priv->service_timer);
	FUNC6(ndev);
	FUNC4(ndev);
	FUNC5(ndev);
	priv->link = 0;

	if (ndev->phydev)
		FUNC7(ndev->phydev);

	ops = priv->ae_handle->dev->ops;

	if (ops->stop)
		ops->stop(priv->ae_handle);

	FUNC6(ndev);

	for (i = priv->ae_handle->q_num - 1; i >= 0; i--) {
		FUNC1(ndev, i);
		FUNC1(ndev, i + priv->ae_handle->q_num);

		/* clean tx buffers*/
		FUNC2(priv->ring_data + i);
	}
}