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
struct stmmac_priv {int dummy; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct net_device*) ; 
 struct stmmac_priv* FUNC2 (struct net_device*) ; 
 scalar_t__ FUNC3 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct stmmac_priv*) ; 
 int /*<<< orphan*/  FUNC5 (struct stmmac_priv*) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev, gfp_t flags)
{
	struct stmmac_priv *priv = FUNC2(dev);
	int ret;

	ret = FUNC0(dev, flags);
	if (ret)
		return ret;

	ret = FUNC1(dev);

	FUNC4(priv);

	if (FUNC3(priv))
		FUNC5(priv);

	return ret;
}