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
struct net_device {scalar_t__ phydev; } ;
struct hix5hd2_priv {int /*<<< orphan*/  mac_core_clk; int /*<<< orphan*/  mac_ifc_clk; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct hix5hd2_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(struct net_device *dev)
{
	struct hix5hd2_priv *priv = FUNC5(dev);

	FUNC3(priv);
	FUNC2(priv);
	FUNC4(&priv->napi);
	FUNC6(dev);
	FUNC1(priv);

	if (dev->phydev) {
		FUNC8(dev->phydev);
		FUNC7(dev->phydev);
	}

	FUNC0(priv->mac_ifc_clk);
	FUNC0(priv->mac_core_clk);

	return 0;
}