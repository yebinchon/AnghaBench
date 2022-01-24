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
struct nfp_net {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFP_NET_CFG_UPDATE_MACADDR ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,void*) ; 
 int FUNC1 (struct net_device*,void*) ; 
 struct nfp_net* FUNC2 (struct net_device*) ; 
 int FUNC3 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfp_net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct net_device *netdev, void *addr)
{
	struct nfp_net *nn = FUNC2(netdev);
	struct sockaddr *saddr = addr;
	int err;

	err = FUNC1(netdev, addr);
	if (err)
		return err;

	FUNC4(nn, saddr->sa_data);

	err = FUNC3(nn, NFP_NET_CFG_UPDATE_MACADDR);
	if (err)
		return err;

	FUNC0(netdev, addr);

	return 0;
}