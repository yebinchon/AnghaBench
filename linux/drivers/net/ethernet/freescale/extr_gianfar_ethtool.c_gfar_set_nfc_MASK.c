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
struct net_device {int dummy; } ;
struct gfar_private {int /*<<< orphan*/  rx_queue_access; int /*<<< orphan*/  num_rx_queues; int /*<<< orphan*/  state; } ;
struct TYPE_2__ {int /*<<< orphan*/  location; int /*<<< orphan*/  ring_cookie; } ;
struct ethtool_rxnfc {int cmd; TYPE_1__ fs; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
#define  ETHTOOL_SRXCLSRLDEL 130 
#define  ETHTOOL_SRXCLSRLINS 129 
#define  ETHTOOL_SRXFH 128 
 int /*<<< orphan*/  GFAR_RESETTING ; 
 int /*<<< orphan*/  MAX_FILER_IDX ; 
 int /*<<< orphan*/  RX_CLS_FLOW_DISC ; 
 int FUNC0 (struct gfar_private*,TYPE_1__*) ; 
 int FUNC1 (struct gfar_private*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct gfar_private*,struct ethtool_rxnfc*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct gfar_private* FUNC5 (struct net_device*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev, struct ethtool_rxnfc *cmd)
{
	struct gfar_private *priv = FUNC5(dev);
	int ret = 0;

	if (FUNC6(GFAR_RESETTING, &priv->state))
		return -EBUSY;

	FUNC3(&priv->rx_queue_access);

	switch (cmd->cmd) {
	case ETHTOOL_SRXFH:
		ret = FUNC2(priv, cmd);
		break;
	case ETHTOOL_SRXCLSRLINS:
		if ((cmd->fs.ring_cookie != RX_CLS_FLOW_DISC &&
		     cmd->fs.ring_cookie >= priv->num_rx_queues) ||
		    cmd->fs.location >= MAX_FILER_IDX) {
			ret = -EINVAL;
			break;
		}
		ret = FUNC0(priv, &cmd->fs);
		break;
	case ETHTOOL_SRXCLSRLDEL:
		ret = FUNC1(priv, cmd->fs.location);
		break;
	default:
		ret = -EINVAL;
	}

	FUNC4(&priv->rx_queue_access);

	return ret;
}