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
struct TYPE_2__ {int /*<<< orphan*/  rx_q_cnt; int /*<<< orphan*/  tx_q_cnt; } ;
struct xlgmac_pdata {TYPE_1__ hw_feat; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTL_Q_IER ; 
 int /*<<< orphan*/  MTL_Q_ISR ; 
 int /*<<< orphan*/  FUNC0 (struct xlgmac_pdata*,unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct xlgmac_pdata *pdata)
{
	unsigned int q_count, i;
	unsigned int mtl_q_isr;

	q_count = FUNC1(pdata->hw_feat.tx_q_cnt, pdata->hw_feat.rx_q_cnt);
	for (i = 0; i < q_count; i++) {
		/* Clear all the interrupts which are set */
		mtl_q_isr = FUNC2(FUNC0(pdata, i, MTL_Q_ISR));
		FUNC3(mtl_q_isr, FUNC0(pdata, i, MTL_Q_ISR));

		/* No MTL interrupts to be enabled */
		FUNC3(0, FUNC0(pdata, i, MTL_Q_IER));
	}
}