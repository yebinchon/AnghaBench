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
typedef  int u8 ;
struct tc_mqprio_qopt {int num_tc; int /*<<< orphan*/  hw; } ;
struct net_device {int num_tc; } ;
struct dpaa2_eth_priv {int dummy; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  TC_MQPRIO_HW_OFFLOAD_TCS ; 
 int TC_SETUP_QDISC_MQPRIO ; 
 int FUNC0 (struct dpaa2_eth_priv*) ; 
 int FUNC1 (struct dpaa2_eth_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*,int) ; 
 struct dpaa2_eth_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dpaa2_eth_priv*) ; 

__attribute__((used)) static int FUNC9(struct net_device *net_dev,
			      enum tc_setup_type type, void *type_data)
{
	struct dpaa2_eth_priv *priv = FUNC3(net_dev);
	struct tc_mqprio_qopt *mqprio = type_data;
	u8 num_tc, num_queues;
	int i;

	if (type != TC_SETUP_QDISC_MQPRIO)
		return -EINVAL;

	mqprio->hw = TC_MQPRIO_HW_OFFLOAD_TCS;
	num_queues = FUNC0(priv);
	num_tc = mqprio->num_tc;

	if (num_tc == net_dev->num_tc)
		return 0;

	if (num_tc  > FUNC1(priv)) {
		FUNC2(net_dev, "Max %d traffic classes supported\n",
			   FUNC1(priv));
		return -EINVAL;
	}

	if (!num_tc) {
		FUNC4(net_dev);
		FUNC7(net_dev, num_queues);
		goto out;
	}

	FUNC5(net_dev, num_tc);
	FUNC7(net_dev, num_tc * num_queues);

	for (i = 0; i < num_tc; i++)
		FUNC6(net_dev, i, num_queues, i * num_queues);

out:
	FUNC8(priv);

	return 0;
}