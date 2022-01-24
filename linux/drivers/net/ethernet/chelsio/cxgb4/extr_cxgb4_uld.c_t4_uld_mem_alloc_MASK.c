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
struct sge_uld_txq_info {int dummy; } ;
struct sge_uld_rxq_info {int dummy; } ;
struct sge {void* uld_rxq_info; void* uld_txq_info; } ;
struct adapter {void* uld; struct sge sge; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXGB4_TX_MAX ; 
 int /*<<< orphan*/  CXGB4_ULD_MAX ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 

int FUNC2(struct adapter *adap)
{
	struct sge *s = &adap->sge;

	adap->uld = FUNC0(CXGB4_ULD_MAX, sizeof(*adap->uld), GFP_KERNEL);
	if (!adap->uld)
		return -ENOMEM;

	s->uld_rxq_info = FUNC0(CXGB4_ULD_MAX,
				  sizeof(struct sge_uld_rxq_info *),
				  GFP_KERNEL);
	if (!s->uld_rxq_info)
		goto err_uld;

	s->uld_txq_info = FUNC0(CXGB4_TX_MAX,
				  sizeof(struct sge_uld_txq_info *),
				  GFP_KERNEL);
	if (!s->uld_txq_info)
		goto err_uld_rx;
	return 0;

err_uld_rx:
	FUNC1(s->uld_rxq_info);
err_uld:
	FUNC1(adap->uld);
	return -ENOMEM;
}