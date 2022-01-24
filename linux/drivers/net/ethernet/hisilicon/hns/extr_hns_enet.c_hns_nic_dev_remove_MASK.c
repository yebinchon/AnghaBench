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
struct platform_device {int dummy; } ;
struct net_device {scalar_t__ reg_state; scalar_t__ phydev; } ;
struct TYPE_2__ {int /*<<< orphan*/ * notifier_call; } ;
struct hns_nic_priv {int /*<<< orphan*/  fwnode; int /*<<< orphan*/  service_task; int /*<<< orphan*/  state; TYPE_1__ notifier_block; int /*<<< orphan*/ * ae_handle; int /*<<< orphan*/ * ring_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ NETREG_UNINITIALIZED ; 
 int /*<<< orphan*/  NIC_STATE_REMOVING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (struct hns_nic_priv*) ; 
 struct hns_nic_priv* FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 struct net_device* FUNC9 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct net_device *ndev = FUNC9(pdev);
	struct hns_nic_priv *priv = FUNC6(ndev);

	if (ndev->reg_state != NETREG_UNINITIALIZED)
		FUNC12(ndev);

	if (priv->ring_data)
		FUNC5(priv);
	priv->ring_data = NULL;

	if (ndev->phydev)
		FUNC8(ndev->phydev);

	if (!FUNC0(priv->ae_handle))
		FUNC3(priv->ae_handle);
	priv->ae_handle = NULL;
	if (priv->notifier_block.notifier_call)
		FUNC4(&priv->notifier_block);
	priv->notifier_block.notifier_call = NULL;

	FUNC10(NIC_STATE_REMOVING, &priv->state);
	(void)FUNC1(&priv->service_task);

	/* safe for ACPI FW */
	FUNC7(FUNC11(priv->fwnode));

	FUNC2(ndev);
	return 0;
}