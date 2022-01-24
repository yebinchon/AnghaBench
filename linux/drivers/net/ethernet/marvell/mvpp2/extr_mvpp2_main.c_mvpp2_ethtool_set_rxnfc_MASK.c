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
struct net_device {int dummy; } ;
struct mvpp2_port {int dummy; } ;
struct ethtool_rxnfc {int cmd; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETHTOOL_SRXCLSRLDEL 130 
#define  ETHTOOL_SRXCLSRLINS 129 
#define  ETHTOOL_SRXFH 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct mvpp2_port*,struct ethtool_rxnfc*) ; 
 int FUNC2 (struct mvpp2_port*,struct ethtool_rxnfc*) ; 
 int FUNC3 (struct mvpp2_port*,struct ethtool_rxnfc*) ; 
 struct mvpp2_port* FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *dev,
				   struct ethtool_rxnfc *info)
{
	struct mvpp2_port *port = FUNC4(dev);
	int ret = 0;

	if (!FUNC0())
		return -EOPNOTSUPP;

	switch (info->cmd) {
	case ETHTOOL_SRXFH:
		ret = FUNC3(port, info);
		break;
	case ETHTOOL_SRXCLSRLINS:
		ret = FUNC2(port, info);
		break;
	case ETHTOOL_SRXCLSRLDEL:
		ret = FUNC1(port, info);
		break;
	default:
		return -EOPNOTSUPP;
	}
	return ret;
}