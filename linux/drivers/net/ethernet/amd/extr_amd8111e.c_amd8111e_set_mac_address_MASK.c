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
struct net_device {int /*<<< orphan*/ * dev_addr; int /*<<< orphan*/  addr_len; } ;
struct amd8111e_priv {int /*<<< orphan*/  lock; scalar_t__ mmio; } ;

/* Variables and functions */
 int ETH_ALEN ; 
 scalar_t__ PADR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct amd8111e_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev, void *p)
{
	struct amd8111e_priv *lp = FUNC1(dev);
	int i;
	struct sockaddr *addr = p;

	FUNC0(dev->dev_addr, addr->sa_data, dev->addr_len);
	FUNC2(&lp->lock);
	/* Setting the MAC address to the device */
	for (i = 0; i < ETH_ALEN; i++)
		FUNC4( dev->dev_addr[i], lp->mmio + PADR + i );

	FUNC3(&lp->lock);

	return 0;
}