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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;
struct fe_priv {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct fe_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(struct net_device *dev, void *addr)
{
	struct fe_priv *np = FUNC2(dev);
	struct sockaddr *macaddr = (struct sockaddr *)addr;

	if (!FUNC0(macaddr->sa_data))
		return -EADDRNOTAVAIL;

	/* synchronized against open : rtnl_lock() held by caller */
	FUNC1(dev->dev_addr, macaddr->sa_data, ETH_ALEN);

	if (FUNC5(dev)) {
		FUNC6(dev);
		FUNC3(dev);
		FUNC11(&np->lock);

		/* stop rx engine */
		FUNC10(dev);

		/* set mac address */
		FUNC8(dev);

		/* restart rx engine */
		FUNC9(dev);
		FUNC12(&np->lock);
		FUNC4(dev);
		FUNC7(dev);
	} else {
		FUNC8(dev);
	}
	return 0;
}