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
struct enetc_ndev_priv {int bdr_int_num; TYPE_1__** int_vector; } ;
struct TYPE_2__ {int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct enetc_ndev_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct enetc_ndev_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 

int FUNC13(struct net_device *ndev)
{
	struct enetc_ndev_priv *priv = FUNC8(ndev);
	int i;

	FUNC10(ndev);

	if (ndev->phydev) {
		FUNC12(ndev->phydev);
		FUNC11(ndev->phydev);
	} else {
		FUNC9(ndev);
	}

	for (i = 0; i < priv->bdr_int_num; i++) {
		FUNC7(&priv->int_vector[i]->napi);
		FUNC6(&priv->int_vector[i]->napi);
	}

	FUNC1(priv);
	FUNC0(priv);

	FUNC4(priv);
	FUNC3(priv);
	FUNC5(priv);
	FUNC2(priv);

	return 0;
}