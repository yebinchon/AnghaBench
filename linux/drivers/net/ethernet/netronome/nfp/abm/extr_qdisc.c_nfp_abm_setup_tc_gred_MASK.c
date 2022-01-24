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
struct tc_gred_qopt_offload {int command; int /*<<< orphan*/  stats; int /*<<< orphan*/  handle; } ;
struct nfp_abm_link {int dummy; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  TC_GRED_DESTROY 130 
#define  TC_GRED_REPLACE 129 
#define  TC_GRED_STATS 128 
 int FUNC0 (struct net_device*,struct nfp_abm_link*,struct tc_gred_qopt_offload*) ; 
 int FUNC1 (struct nfp_abm_link*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct nfp_abm_link*,int /*<<< orphan*/ ) ; 

int FUNC3(struct net_device *netdev, struct nfp_abm_link *alink,
			  struct tc_gred_qopt_offload *opt)
{
	switch (opt->command) {
	case TC_GRED_REPLACE:
		return FUNC0(netdev, alink, opt);
	case TC_GRED_DESTROY:
		FUNC2(netdev, alink, opt->handle);
		return 0;
	case TC_GRED_STATS:
		return FUNC1(alink, opt->handle, &opt->stats);
	default:
		return -EOPNOTSUPP;
	}
}