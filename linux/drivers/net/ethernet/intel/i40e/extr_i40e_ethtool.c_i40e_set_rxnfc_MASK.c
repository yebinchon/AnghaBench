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
struct i40e_vsi {struct i40e_pf* back; } ;
struct i40e_pf {int dummy; } ;
struct i40e_netdev_priv {struct i40e_vsi* vsi; } ;
struct ethtool_rxnfc {int cmd; } ;

/* Variables and functions */
 int EOPNOTSUPP ; 
#define  ETHTOOL_SRXCLSRLDEL 130 
#define  ETHTOOL_SRXCLSRLINS 129 
#define  ETHTOOL_SRXFH 128 
 int FUNC0 (struct i40e_vsi*,struct ethtool_rxnfc*) ; 
 int FUNC1 (struct i40e_vsi*,struct ethtool_rxnfc*) ; 
 int FUNC2 (struct i40e_pf*,struct ethtool_rxnfc*) ; 
 struct i40e_netdev_priv* FUNC3 (struct net_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *netdev, struct ethtool_rxnfc *cmd)
{
	struct i40e_netdev_priv *np = FUNC3(netdev);
	struct i40e_vsi *vsi = np->vsi;
	struct i40e_pf *pf = vsi->back;
	int ret = -EOPNOTSUPP;

	switch (cmd->cmd) {
	case ETHTOOL_SRXFH:
		ret = FUNC2(pf, cmd);
		break;
	case ETHTOOL_SRXCLSRLINS:
		ret = FUNC0(vsi, cmd);
		break;
	case ETHTOOL_SRXCLSRLDEL:
		ret = FUNC1(vsi, cmd);
		break;
	default:
		break;
	}

	return ret;
}