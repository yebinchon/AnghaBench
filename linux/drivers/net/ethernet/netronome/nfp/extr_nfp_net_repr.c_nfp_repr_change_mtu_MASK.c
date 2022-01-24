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
struct nfp_repr {int /*<<< orphan*/  app; } ;
struct net_device {int mtu; } ;

/* Variables and functions */
 struct nfp_repr* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct net_device*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,struct net_device*,int) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev, int new_mtu)
{
	struct nfp_repr *repr = FUNC0(netdev);
	int err;

	err = FUNC1(repr->app, netdev, new_mtu);
	if (err)
		return err;

	err = FUNC2(repr->app, netdev, new_mtu);
	if (err)
		return err;

	netdev->mtu = new_mtu;

	return 0;
}