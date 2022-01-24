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
typedef  scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct ethtool_coalesce {scalar_t__ rx_coalesce_usecs; scalar_t__ tx_coalesce_usecs; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ HNS3_INT_GL_MAX ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct net_device *netdev,
				       struct ethtool_coalesce *cmd)
{
	u32 rx_gl, tx_gl;

	if (cmd->rx_coalesce_usecs > HNS3_INT_GL_MAX) {
		FUNC1(netdev,
			   "Invalid rx-usecs value, rx-usecs range is 0-%d\n",
			   HNS3_INT_GL_MAX);
		return -EINVAL;
	}

	if (cmd->tx_coalesce_usecs > HNS3_INT_GL_MAX) {
		FUNC1(netdev,
			   "Invalid tx-usecs value, tx-usecs range is 0-%d\n",
			   HNS3_INT_GL_MAX);
		return -EINVAL;
	}

	rx_gl = FUNC0(cmd->rx_coalesce_usecs);
	if (rx_gl != cmd->rx_coalesce_usecs) {
		FUNC2(netdev,
			    "rx_usecs(%d) rounded down to %d, because it must be multiple of 2.\n",
			    cmd->rx_coalesce_usecs, rx_gl);
	}

	tx_gl = FUNC0(cmd->tx_coalesce_usecs);
	if (tx_gl != cmd->tx_coalesce_usecs) {
		FUNC2(netdev,
			    "tx_usecs(%d) rounded down to %d, because it must be multiple of 2.\n",
			    cmd->tx_coalesce_usecs, tx_gl);
	}

	return 0;
}