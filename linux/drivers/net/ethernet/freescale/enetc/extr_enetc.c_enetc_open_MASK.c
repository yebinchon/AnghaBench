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
struct net_device {scalar_t__ phydev; } ;
struct enetc_ndev_priv {int bdr_int_num; TYPE_1__** int_vector; int /*<<< orphan*/  num_rx_rings; int /*<<< orphan*/  num_tx_rings; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int FUNC0 (struct enetc_ndev_priv*) ; 
 int FUNC1 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct enetc_ndev_priv*) ; 
 int FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct enetc_ndev_priv*) ; 
 int FUNC8 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 struct enetc_ndev_priv* FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int FUNC12 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__) ; 

int FUNC17(struct net_device *ndev)
{
	struct enetc_ndev_priv *priv = FUNC10(ndev);
	int i, err;

	err = FUNC8(priv);
	if (err)
		return err;

	err = FUNC6(ndev);
	if (err)
		goto err_phy_connect;

	err = FUNC1(priv);
	if (err)
		goto err_alloc_tx;

	err = FUNC0(priv);
	if (err)
		goto err_alloc_rx;

	FUNC7(priv);

	err = FUNC13(ndev, priv->num_tx_rings);
	if (err)
		goto err_set_queues;

	err = FUNC12(ndev, priv->num_rx_rings);
	if (err)
		goto err_set_queues;

	for (i = 0; i < priv->bdr_int_num; i++)
		FUNC9(&priv->int_vector[i]->napi);

	FUNC2(priv);

	if (ndev->phydev)
		FUNC16(ndev->phydev);
	else
		FUNC11(ndev);

	FUNC14(ndev);

	return 0;

err_set_queues:
	FUNC4(priv);
err_alloc_rx:
	FUNC5(priv);
err_alloc_tx:
	if (ndev->phydev)
		FUNC15(ndev->phydev);
err_phy_connect:
	FUNC3(priv);

	return err;
}