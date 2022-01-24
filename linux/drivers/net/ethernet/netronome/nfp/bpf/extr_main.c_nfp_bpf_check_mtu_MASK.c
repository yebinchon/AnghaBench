#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ctrl; } ;
struct nfp_net {TYPE_1__ dp; } ;
struct nfp_app {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  NFP_NET_CFG_BPF_INL_MTU ; 
 int NFP_NET_CFG_CTRL_BPF ; 
 struct nfp_net* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct nfp_net*,char*,unsigned int) ; 
 int FUNC2 (struct nfp_net*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(struct nfp_app *app, struct net_device *netdev, int new_mtu)
{
	struct nfp_net *nn = FUNC0(netdev);
	unsigned int max_mtu;

	if (~nn->dp.ctrl & NFP_NET_CFG_CTRL_BPF)
		return 0;

	max_mtu = FUNC2(nn, NFP_NET_CFG_BPF_INL_MTU) * 64 - 32;
	if (new_mtu > max_mtu) {
		FUNC1(nn, "BPF offload active, MTU over %u not supported\n",
			max_mtu);
		return -EBUSY;
	}
	return 0;
}