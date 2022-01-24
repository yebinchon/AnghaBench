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
typedef  int u8 ;
struct tc_mqprio_qopt {int num_tc; int /*<<< orphan*/  hw; } ;
struct net_device {int dummy; } ;
struct enetc_ndev_priv {int num_tx_rings; TYPE_1__* si; struct enetc_bdr** tx_ring; } ;
struct enetc_bdr {int /*<<< orphan*/  index; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;
struct TYPE_2__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  TC_MQPRIO_HW_OFFLOAD_TCS ; 
 int TC_SETUP_QDISC_MQPRIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int) ; 
 struct enetc_ndev_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int) ; 

int FUNC7(struct net_device *ndev, enum tc_setup_type type,
		   void *type_data)
{
	struct enetc_ndev_priv *priv = FUNC2(ndev);
	struct tc_mqprio_qopt *mqprio = type_data;
	struct enetc_bdr *tx_ring;
	u8 num_tc;
	int i;

	if (type != TC_SETUP_QDISC_MQPRIO)
		return -EOPNOTSUPP;

	mqprio->hw = TC_MQPRIO_HW_OFFLOAD_TCS;
	num_tc = mqprio->num_tc;

	if (!num_tc) {
		FUNC3(ndev);
		FUNC6(ndev, priv->num_tx_rings);

		/* Reset all ring priorities to 0 */
		for (i = 0; i < priv->num_tx_rings; i++) {
			tx_ring = priv->tx_ring[i];
			FUNC0(&priv->si->hw, tx_ring->index, 0);
		}

		return 0;
	}

	/* Check if we have enough BD rings available to accommodate all TCs */
	if (num_tc > priv->num_tx_rings) {
		FUNC1(ndev, "Max %d traffic classes supported\n",
			   priv->num_tx_rings);
		return -EINVAL;
	}

	/* For the moment, we use only one BD ring per TC.
	 *
	 * Configure num_tc BD rings with increasing priorities.
	 */
	for (i = 0; i < num_tc; i++) {
		tx_ring = priv->tx_ring[i];
		FUNC0(&priv->si->hw, tx_ring->index, i);
	}

	/* Reset the number of netdev queues based on the TC count */
	FUNC6(ndev, num_tc);

	FUNC4(ndev, num_tc);

	/* Each TC is associated with one netdev queue */
	for (i = 0; i < num_tc; i++)
		FUNC5(ndev, i, 1, i);

	return 0;
}