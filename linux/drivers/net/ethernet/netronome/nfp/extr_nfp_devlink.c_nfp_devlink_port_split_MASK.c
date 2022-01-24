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
struct nfp_pf {int /*<<< orphan*/  lock; } ;
struct nfp_eth_table_port {unsigned int port_lanes; int lanes; int /*<<< orphan*/  index; scalar_t__ is_split; } ;
struct netlink_ext_ack {int dummy; } ;
struct devlink {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct nfp_pf* FUNC0 (struct devlink*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct nfp_pf*,unsigned int,struct nfp_eth_table_port*) ; 
 int FUNC4 (struct nfp_pf*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int
FUNC7(struct devlink *devlink, unsigned int port_index,
		       unsigned int count, struct netlink_ext_ack *extack)
{
	struct nfp_pf *pf = FUNC0(devlink);
	struct nfp_eth_table_port eth_port;
	unsigned int lanes;
	int ret;

	if (count < 2)
		return -EINVAL;

	FUNC1(&pf->lock);

	FUNC5();
	ret = FUNC3(pf, port_index, &eth_port);
	FUNC6();
	if (ret)
		goto out;

	if (eth_port.is_split || eth_port.port_lanes % count) {
		ret = -EINVAL;
		goto out;
	}

	/* Special case the 100G CXP -> 2x40G split */
	lanes = eth_port.port_lanes / count;
	if (eth_port.lanes == 10 && count == 2)
		lanes = 8 / count;

	ret = FUNC4(pf, eth_port.index, lanes);
out:
	FUNC2(&pf->lock);

	return ret;
}