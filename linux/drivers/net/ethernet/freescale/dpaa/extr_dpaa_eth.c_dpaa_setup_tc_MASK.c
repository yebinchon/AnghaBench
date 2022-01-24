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
struct net_device {int dummy; } ;
struct dpaa_priv {int num_tc; } ;
typedef  enum tc_setup_type { ____Placeholder_tc_setup_type } tc_setup_type ;

/* Variables and functions */
 int DPAA_TC_NUM ; 
 int DPAA_TC_TXQ_NUM ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  TC_MQPRIO_HW_OFFLOAD_TCS ; 
 int TC_SETUP_QDISC_MQPRIO ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int) ; 
 struct dpaa_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC6(struct net_device *net_dev, enum tc_setup_type type,
			 void *type_data)
{
	struct dpaa_priv *priv = FUNC1(net_dev);
	struct tc_mqprio_qopt *mqprio = type_data;
	u8 num_tc;
	int i;

	if (type != TC_SETUP_QDISC_MQPRIO)
		return -EOPNOTSUPP;

	mqprio->hw = TC_MQPRIO_HW_OFFLOAD_TCS;
	num_tc = mqprio->num_tc;

	if (num_tc == priv->num_tc)
		return 0;

	if (!num_tc) {
		FUNC2(net_dev);
		goto out;
	}

	if (num_tc > DPAA_TC_NUM) {
		FUNC0(net_dev, "Too many traffic classes: max %d supported.\n",
			   DPAA_TC_NUM);
		return -EINVAL;
	}

	FUNC3(net_dev, num_tc);

	for (i = 0; i < num_tc; i++)
		FUNC4(net_dev, i, DPAA_TC_TXQ_NUM,
				    i * DPAA_TC_TXQ_NUM);

out:
	priv->num_tc = num_tc ? : 1;
	FUNC5(net_dev, priv->num_tc * DPAA_TC_TXQ_NUM);
	return 0;
}