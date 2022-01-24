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
struct sge_uld_txq_info {struct sge_uld_txq* uldtxq; } ;
struct sge_uld_txq {int dummy; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {struct sge_uld_txq_info** uld_txq_info; } ;
struct adapter {TYPE_1__ sge; } ;

/* Variables and functions */
 size_t CXGB4_TX_OFLD ; 
 int NET_XMIT_DROP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int) ; 
 struct adapter* FUNC4 (struct net_device*) ; 
 int FUNC5 (struct sge_uld_txq*,void const*,unsigned int) ; 
 scalar_t__ FUNC6 (int) ; 

int FUNC7(struct net_device *dev, unsigned int idx,
		       const void *src, unsigned int len)
{
	struct sge_uld_txq_info *txq_info;
	struct sge_uld_txq *txq;
	struct adapter *adap;
	int ret;

	adap = FUNC4(dev);

	FUNC1();
	txq_info = adap->sge.uld_txq_info[CXGB4_TX_OFLD];
	if (FUNC6(!txq_info)) {
		FUNC0(true);
		FUNC2();
		return NET_XMIT_DROP;
	}
	txq = &txq_info->uldtxq[idx];

	ret = FUNC5(txq, src, len);
	FUNC2();
	return FUNC3(ret);
}