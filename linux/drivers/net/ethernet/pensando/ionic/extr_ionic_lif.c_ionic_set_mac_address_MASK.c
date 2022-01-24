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
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr {scalar_t__ sa_data; } ;
struct net_device {int /*<<< orphan*/ * dev_addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct sockaddr*) ; 
 int FUNC1 (struct net_device*,struct sockaddr*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *netdev, void *sa)
{
	struct sockaddr *addr = sa;
	u8 *mac;
	int err;

	mac = (u8 *)addr->sa_data;
	if (FUNC2(netdev->dev_addr, mac))
		return 0;

	err = FUNC1(netdev, addr);
	if (err)
		return err;

	if (!FUNC5(netdev->dev_addr)) {
		FUNC6(netdev, "deleting mac addr %pM\n",
			    netdev->dev_addr);
		FUNC4(netdev, netdev->dev_addr);
	}

	FUNC0(netdev, addr);
	FUNC6(netdev, "updating mac addr %pM\n", mac);

	return FUNC3(netdev, mac);
}