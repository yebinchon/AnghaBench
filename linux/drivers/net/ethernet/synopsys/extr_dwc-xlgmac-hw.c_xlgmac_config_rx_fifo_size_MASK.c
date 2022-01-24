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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {int /*<<< orphan*/  rx_fifo_size; } ;
struct xlgmac_pdata {unsigned int rx_q_count; int /*<<< orphan*/  netdev; TYPE_1__ hw_feat; } ;

/* Variables and functions */
 int /*<<< orphan*/  MTL_Q_RQOMR ; 
 int /*<<< orphan*/  MTL_Q_RQOMR_RQS_LEN ; 
 int /*<<< orphan*/  MTL_Q_RQOMR_RQS_POS ; 
 int /*<<< orphan*/  FUNC0 (struct xlgmac_pdata*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  drv ; 
 int /*<<< orphan*/  FUNC2 (struct xlgmac_pdata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static void FUNC6(struct xlgmac_pdata *pdata)
{
	unsigned int fifo_size;
	unsigned int i;
	u32 regval;

	fifo_size = FUNC5(
					pdata->hw_feat.rx_fifo_size,
					pdata->rx_q_count);

	for (i = 0; i < pdata->rx_q_count; i++) {
		regval = FUNC3(FUNC0(pdata, i, MTL_Q_RQOMR));
		regval = FUNC1(regval, MTL_Q_RQOMR_RQS_POS,
					     MTL_Q_RQOMR_RQS_LEN, fifo_size);
		FUNC4(regval, FUNC0(pdata, i, MTL_Q_RQOMR));
	}

	FUNC2(pdata, drv, pdata->netdev,
		   "%d Rx hardware queues, %d byte fifo per queue\n",
		   pdata->rx_q_count, ((fifo_size + 1) * 256));
}