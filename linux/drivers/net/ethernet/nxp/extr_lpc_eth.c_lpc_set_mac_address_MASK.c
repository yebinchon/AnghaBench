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
struct netdata_local {int /*<<< orphan*/  lock; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (struct netdata_local*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct netdata_local* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct net_device *ndev, void *p)
{
	struct sockaddr *addr = p;
	struct netdata_local *pldat = FUNC3(ndev);
	unsigned long flags;

	if (!FUNC1(addr->sa_data))
		return -EADDRNOTAVAIL;
	FUNC2(ndev->dev_addr, addr->sa_data, ETH_ALEN);

	FUNC4(&pldat->lock, flags);

	/* Set station address */
	FUNC0(pldat, ndev->dev_addr);

	FUNC5(&pldat->lock, flags);

	return 0;
}