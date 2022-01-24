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
struct tc_red_qopt_offload {int command; int /*<<< orphan*/  child_handle; int /*<<< orphan*/  handle; int /*<<< orphan*/  stats; } ;
struct nfp_abm_link {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  TC_RED_DESTROY 132 
#define  TC_RED_GRAFT 131 
#define  TC_RED_REPLACE 130 
#define  TC_RED_STATS 129 
#define  TC_RED_XSTATS 128 
 int /*<<< orphan*/  FUNC0 (struct net_device*,struct nfp_abm_link*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct nfp_abm_link*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,struct nfp_abm_link*,struct tc_red_qopt_offload*) ; 
 int FUNC3 (struct nfp_abm_link*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct nfp_abm_link*,struct tc_red_qopt_offload*) ; 

int FUNC5(struct net_device *netdev, struct nfp_abm_link *alink,
			 struct tc_red_qopt_offload *opt)
{
	switch (opt->command) {
	case TC_RED_REPLACE:
		return FUNC2(netdev, alink, opt);
	case TC_RED_DESTROY:
		FUNC0(netdev, alink, opt->handle);
		return 0;
	case TC_RED_STATS:
		return FUNC3(alink, opt->handle, &opt->stats);
	case TC_RED_XSTATS:
		return FUNC4(alink, opt);
	case TC_RED_GRAFT:
		return FUNC1(alink, opt->handle,
					   opt->child_handle, 0);
	default:
		return -EOPNOTSUPP;
	}
}