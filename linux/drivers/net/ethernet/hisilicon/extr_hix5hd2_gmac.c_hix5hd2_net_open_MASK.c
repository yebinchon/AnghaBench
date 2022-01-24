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
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct hix5hd2_priv {int /*<<< orphan*/  napi; int /*<<< orphan*/  mac_core_clk; int /*<<< orphan*/  mac_ifc_clk; int /*<<< orphan*/  phy_mode; int /*<<< orphan*/  phy_node; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hix5hd2_adjust_link ; 
 int /*<<< orphan*/  FUNC2 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct hix5hd2_priv*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,char*,int) ; 
 struct hix5hd2_priv* FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 struct phy_device* FUNC11 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct phy_device*) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev)
{
	struct hix5hd2_priv *priv = FUNC8(dev);
	struct phy_device *phy;
	int ret;

	ret = FUNC1(priv->mac_core_clk);
	if (ret < 0) {
		FUNC7(dev, "failed to enable mac core clk %d\n", ret);
		return ret;
	}

	ret = FUNC1(priv->mac_ifc_clk);
	if (ret < 0) {
		FUNC0(priv->mac_core_clk);
		FUNC7(dev, "failed to enable mac ifc clk %d\n", ret);
		return ret;
	}

	phy = FUNC11(dev, priv->phy_node,
			     &hix5hd2_adjust_link, 0, priv->phy_mode);
	if (!phy) {
		FUNC0(priv->mac_ifc_clk);
		FUNC0(priv->mac_core_clk);
		return -ENODEV;
	}

	FUNC12(phy);
	FUNC2(priv);
	FUNC5(priv);

	FUNC9(dev);
	FUNC10(dev);
	FUNC6(&priv->napi);

	FUNC4(priv);
	FUNC3(priv);

	return 0;
}