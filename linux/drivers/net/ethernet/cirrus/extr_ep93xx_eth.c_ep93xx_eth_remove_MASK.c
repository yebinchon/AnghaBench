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
struct platform_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ep93xx_priv {int /*<<< orphan*/ * res; int /*<<< orphan*/ * base_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ep93xx_priv*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct ep93xx_priv* FUNC4 (struct net_device*) ; 
 struct net_device* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct net_device *dev;
	struct ep93xx_priv *ep;

	dev = FUNC5(pdev);
	if (dev == NULL)
		return 0;

	ep = FUNC4(dev);

	/* @@@ Force down.  */
	FUNC7(dev);
	FUNC0(ep);

	if (ep->base_addr != NULL)
		FUNC2(ep->base_addr);

	if (ep->res != NULL) {
		FUNC6(ep->res);
		FUNC3(ep->res);
	}

	FUNC1(dev);

	return 0;
}