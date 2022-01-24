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
struct stmmac_priv {int /*<<< orphan*/  hw; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int FUNC0 (struct net_device*,void*) ; 
 struct stmmac_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct stmmac_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct net_device *ndev, void *addr)
{
	struct stmmac_priv *priv = FUNC1(ndev);
	int ret = 0;

	ret = FUNC0(ndev, addr);
	if (ret)
		return ret;

	FUNC2(priv, priv->hw, ndev->dev_addr, 0);

	return ret;
}