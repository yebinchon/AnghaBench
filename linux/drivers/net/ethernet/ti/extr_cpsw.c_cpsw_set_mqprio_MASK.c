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
typedef  int u32 ;
struct TYPE_2__ {int num_tc; int* prio_tc_map; int* count; int* offset; scalar_t__ hw; } ;
struct tc_mqprio_qopt_offload {scalar_t__ mode; TYPE_1__ qopt; } ;
struct net_device {int dummy; } ;
struct cpsw_slave {int dummy; } ;
struct cpsw_priv {scalar_t__ mqprio_hw; struct cpsw_common* cpsw; } ;
struct cpsw_common {scalar_t__ version; int /*<<< orphan*/  dev; struct cpsw_slave* slaves; } ;

/* Variables and functions */
 int CPSW1_TX_PRI_MAP ; 
 int CPSW2_TX_PRI_MAP ; 
 int CPSW_TC_NUM ; 
 scalar_t__ CPSW_VERSION_1 ; 
 int EINVAL ; 
 scalar_t__ TC_MQPRIO_MODE_DCB ; 
 int TX_PRIORITY_MAPPING ; 
 size_t FUNC0 (struct cpsw_common*,struct cpsw_priv*) ; 
 int FUNC1 (int,int) ; 
 struct cpsw_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct cpsw_slave*,int,int) ; 

__attribute__((used)) static int FUNC10(struct net_device *ndev, void *type_data)
{
	struct tc_mqprio_qopt_offload *mqprio = type_data;
	struct cpsw_priv *priv = FUNC2(ndev);
	struct cpsw_common *cpsw = priv->cpsw;
	int fifo, num_tc, count, offset;
	struct cpsw_slave *slave;
	u32 tx_prio_map = 0;
	int i, tc, ret;

	num_tc = mqprio->qopt.num_tc;
	if (num_tc > CPSW_TC_NUM)
		return -EINVAL;

	if (mqprio->mode != TC_MQPRIO_MODE_DCB)
		return -EINVAL;

	ret = FUNC6(cpsw->dev);
	if (ret < 0) {
		FUNC7(cpsw->dev);
		return ret;
	}

	if (num_tc) {
		for (i = 0; i < 8; i++) {
			tc = mqprio->qopt.prio_tc_map[i];
			fifo = FUNC1(tc, num_tc);
			tx_prio_map |= fifo << (4 * i);
		}

		FUNC4(ndev, num_tc);
		for (i = 0; i < num_tc; i++) {
			count = mqprio->qopt.count[i];
			offset = mqprio->qopt.offset[i];
			FUNC5(ndev, i, count, offset);
		}
	}

	if (!mqprio->qopt.hw) {
		/* restore default configuration */
		FUNC3(ndev);
		tx_prio_map = TX_PRIORITY_MAPPING;
	}

	priv->mqprio_hw = mqprio->qopt.hw;

	offset = cpsw->version == CPSW_VERSION_1 ?
		 CPSW1_TX_PRI_MAP : CPSW2_TX_PRI_MAP;

	slave = &cpsw->slaves[FUNC0(cpsw, priv)];
	FUNC9(slave, tx_prio_map, offset);

	FUNC8(cpsw->dev);

	return 0;
}