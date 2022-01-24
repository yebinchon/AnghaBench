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
struct udp_tunnel_info {scalar_t__ type; int /*<<< orphan*/  port; } ;
struct nfp_net {int /*<<< orphan*/ * vxlan_usecnt; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int ENOSPC ; 
 scalar_t__ UDP_TUNNEL_TYPE_VXLAN ; 
 struct nfp_net* FUNC0 (struct net_device*) ; 
 int FUNC1 (struct nfp_net*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct nfp_net*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *netdev,
				   struct udp_tunnel_info *ti)
{
	struct nfp_net *nn = FUNC0(netdev);
	int idx;

	if (ti->type != UDP_TUNNEL_TYPE_VXLAN)
		return;

	idx = FUNC1(nn, ti->port);
	if (idx == -ENOSPC)
		return;

	if (!nn->vxlan_usecnt[idx]++)
		FUNC2(nn, idx, ti->port);
}