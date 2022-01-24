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
struct nfp_net_dp {int mtu; } ;
struct nfp_net {int /*<<< orphan*/  app; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct nfp_net* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct net_device*,int) ; 
 struct nfp_net_dp* FUNC2 (struct nfp_net*) ; 
 int FUNC3 (struct nfp_net*,struct nfp_net_dp*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, int new_mtu)
{
	struct nfp_net *nn = FUNC0(netdev);
	struct nfp_net_dp *dp;
	int err;

	err = FUNC1(nn->app, netdev, new_mtu);
	if (err)
		return err;

	dp = FUNC2(nn);
	if (!dp)
		return -ENOMEM;

	dp->mtu = new_mtu;

	return FUNC3(nn, dp, NULL);
}