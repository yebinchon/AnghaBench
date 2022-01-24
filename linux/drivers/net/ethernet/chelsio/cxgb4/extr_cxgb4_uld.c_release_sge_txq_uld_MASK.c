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
struct sge_uld_txq_info {struct sge_uld_txq_info* uldtxq; int /*<<< orphan*/  users; } ;
struct TYPE_2__ {struct sge_uld_txq_info** uld_txq_info; } ;
struct adapter {TYPE_1__ sge; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct adapter*,struct sge_uld_txq_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct sge_uld_txq_info*) ; 

__attribute__((used)) static void
FUNC4(struct adapter *adap, unsigned int uld_type)
{
	struct sge_uld_txq_info *txq_info = NULL;
	int tx_uld_type = FUNC0(uld_type);

	txq_info = adap->sge.uld_txq_info[tx_uld_type];

	if (txq_info && FUNC1(&txq_info->users)) {
		FUNC2(adap, txq_info);
		FUNC3(txq_info->uldtxq);
		FUNC3(txq_info);
		adap->sge.uld_txq_info[tx_uld_type] = NULL;
	}
}