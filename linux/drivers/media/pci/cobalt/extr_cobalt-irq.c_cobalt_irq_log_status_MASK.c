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
typedef  int u32 ;
struct cobalt {int /*<<< orphan*/ * irq_dma; scalar_t__ irq_full_fifo; scalar_t__ irq_none; scalar_t__ irq_advout; scalar_t__ irq_adv2; scalar_t__ irq_adv1; scalar_t__ irq_dma_tot; } ;

/* Variables and functions */
 int COBALT_NUM_STREAMS ; 
 int COBALT_SYSSTAT_AUD_IN_LOST_DATA_MSK ; 
 int COBALT_SYSSTAT_AUD_OUT_LOST_DATA_MSK ; 
 int COBALT_SYSSTAT_VI0_LOST_DATA_MSK ; 
 int COBALT_SYSSTAT_VI1_LOST_DATA_MSK ; 
 int COBALT_SYSSTAT_VI2_LOST_DATA_MSK ; 
 int COBALT_SYSSTAT_VI3_LOST_DATA_MSK ; 
 int COBALT_SYSSTAT_VIHSMA_LOST_DATA_MSK ; 
 int COBALT_SYSSTAT_VOHSMA_LOST_DATA_MSK ; 
 int /*<<< orphan*/  COBALT_SYS_STAT_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,...) ; 
 int FUNC1 (struct cobalt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct cobalt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void FUNC5(struct cobalt *cobalt)
{
	u32 mask;
	int i;

	FUNC0("irq: adv1=%u adv2=%u advout=%u none=%u full=%u\n",
		    cobalt->irq_adv1, cobalt->irq_adv2, cobalt->irq_advout,
		    cobalt->irq_none, cobalt->irq_full_fifo);
	FUNC0("irq: dma_tot=%u (", cobalt->irq_dma_tot);
	for (i = 0; i < COBALT_NUM_STREAMS; i++)
		FUNC4("%s%u", i ? "/" : "", cobalt->irq_dma[i]);
	FUNC4(")\n");
	cobalt->irq_dma_tot = cobalt->irq_adv1 = cobalt->irq_adv2 = 0;
	cobalt->irq_advout = cobalt->irq_none = cobalt->irq_full_fifo = 0;
	FUNC3(cobalt->irq_dma, 0, sizeof(cobalt->irq_dma));

	mask = FUNC1(cobalt, COBALT_SYS_STAT_MASK);
	FUNC2(cobalt, COBALT_SYS_STAT_MASK,
			mask |
			COBALT_SYSSTAT_VI0_LOST_DATA_MSK |
			COBALT_SYSSTAT_VI1_LOST_DATA_MSK |
			COBALT_SYSSTAT_VI2_LOST_DATA_MSK |
			COBALT_SYSSTAT_VI3_LOST_DATA_MSK |
			COBALT_SYSSTAT_VIHSMA_LOST_DATA_MSK |
			COBALT_SYSSTAT_VOHSMA_LOST_DATA_MSK |
			COBALT_SYSSTAT_AUD_IN_LOST_DATA_MSK |
			COBALT_SYSSTAT_AUD_OUT_LOST_DATA_MSK);
}