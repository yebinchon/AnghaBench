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
struct list_head {int dummy; } ;
struct fm_port_fqs {struct dpaa_fq* tx_defq; struct dpaa_fq* tx_errq; struct dpaa_fq* rx_pcdq; struct dpaa_fq* rx_defq; struct dpaa_fq* rx_errq; } ;
struct dpaa_fq {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int DPAA_ETH_PCD_RXQ_NUM ; 
 int DPAA_ETH_TXQ_NUM ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FQ_TYPE_RX_DEFAULT ; 
 int /*<<< orphan*/  FQ_TYPE_RX_ERROR ; 
 int /*<<< orphan*/  FQ_TYPE_RX_PCD ; 
 int /*<<< orphan*/  FQ_TYPE_TX ; 
 int /*<<< orphan*/  FQ_TYPE_TX_CONFIRM ; 
 int /*<<< orphan*/  FQ_TYPE_TX_CONF_MQ ; 
 int /*<<< orphan*/  FQ_TYPE_TX_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 struct dpaa_fq* FUNC2 (struct device*,scalar_t__,int,struct list_head*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct device *dev, struct list_head *list,
			      struct fm_port_fqs *port_fqs)
{
	struct dpaa_fq *dpaa_fq;
	u32 fq_base, fq_base_aligned, i;

	dpaa_fq = FUNC2(dev, 0, 1, list, FQ_TYPE_RX_ERROR);
	if (!dpaa_fq)
		goto fq_alloc_failed;

	port_fqs->rx_errq = &dpaa_fq[0];

	dpaa_fq = FUNC2(dev, 0, 1, list, FQ_TYPE_RX_DEFAULT);
	if (!dpaa_fq)
		goto fq_alloc_failed;

	port_fqs->rx_defq = &dpaa_fq[0];

	/* the PCD FQIDs range needs to be aligned for correct operation */
	if (FUNC3(&fq_base, 2 * DPAA_ETH_PCD_RXQ_NUM))
		goto fq_alloc_failed;

	fq_base_aligned = FUNC0(fq_base, DPAA_ETH_PCD_RXQ_NUM);

	for (i = fq_base; i < fq_base_aligned; i++)
		FUNC4(i);

	for (i = fq_base_aligned + DPAA_ETH_PCD_RXQ_NUM;
	     i < (fq_base + 2 * DPAA_ETH_PCD_RXQ_NUM); i++)
		FUNC4(i);

	dpaa_fq = FUNC2(dev, fq_base_aligned, DPAA_ETH_PCD_RXQ_NUM,
				list, FQ_TYPE_RX_PCD);
	if (!dpaa_fq)
		goto fq_alloc_failed;

	port_fqs->rx_pcdq = &dpaa_fq[0];

	if (!FUNC2(dev, 0, DPAA_ETH_TXQ_NUM, list, FQ_TYPE_TX_CONF_MQ))
		goto fq_alloc_failed;

	dpaa_fq = FUNC2(dev, 0, 1, list, FQ_TYPE_TX_ERROR);
	if (!dpaa_fq)
		goto fq_alloc_failed;

	port_fqs->tx_errq = &dpaa_fq[0];

	dpaa_fq = FUNC2(dev, 0, 1, list, FQ_TYPE_TX_CONFIRM);
	if (!dpaa_fq)
		goto fq_alloc_failed;

	port_fqs->tx_defq = &dpaa_fq[0];

	if (!FUNC2(dev, 0, DPAA_ETH_TXQ_NUM, list, FQ_TYPE_TX))
		goto fq_alloc_failed;

	return 0;

fq_alloc_failed:
	FUNC1(dev, "dpaa_fq_alloc() failed\n");
	return -ENOMEM;
}