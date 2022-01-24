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
struct smsc911x_data {int generation; int /*<<< orphan*/  mac_lock; } ;
struct net_device {int /*<<< orphan*/  dev_addr; } ;

/* Variables and functions */
 int EADDRNOTAVAIL ; 
 int EBUSY ; 
 int /*<<< orphan*/  ETH_ALEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int /*<<< orphan*/ ) ; 
 struct smsc911x_data* FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct smsc911x_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, void *p)
{
	struct smsc911x_data *pdata = FUNC3(dev);
	struct sockaddr *addr = p;

	/* On older hardware revisions we cannot change the mac address
	 * registers while receiving data.  Newer devices can safely change
	 * this at any time. */
	if (pdata->generation <= 1 && FUNC4(dev))
		return -EBUSY;

	if (!FUNC0(addr->sa_data))
		return -EADDRNOTAVAIL;

	FUNC1(dev->dev_addr, addr->sa_data, ETH_ALEN);

	FUNC6(&pdata->mac_lock);
	FUNC5(pdata, dev->dev_addr);
	FUNC7(&pdata->mac_lock);

	FUNC2(dev, "MAC Address: %pM\n", dev->dev_addr);

	return 0;
}