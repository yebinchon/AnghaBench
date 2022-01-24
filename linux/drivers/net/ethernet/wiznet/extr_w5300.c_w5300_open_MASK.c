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
struct w5300_priv {int /*<<< orphan*/  link_gpio; int /*<<< orphan*/  napi; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifup ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct w5300_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct w5300_priv*,int /*<<< orphan*/ ,struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct w5300_priv*) ; 

__attribute__((used)) static int FUNC8(struct net_device *ndev)
{
	struct w5300_priv *priv = FUNC3(ndev);

	FUNC5(priv, ifup, ndev, "enabling\n");
	FUNC7(priv);
	FUNC2(&priv->napi);
	FUNC6(ndev);
	if (!FUNC1(priv->link_gpio) ||
	    FUNC0(priv->link_gpio) != 0)
		FUNC4(ndev);
	return 0;
}