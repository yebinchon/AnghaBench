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
struct nlattr {int dummy; } ;
struct TYPE_2__ {int inactivity_timeout; void* q_low_mark; void* q_high_mark; void* tail_align; void* head_align; void* aggregation_timeout; } ;
struct cfhsi {TYPE_1__ cfg; } ;

/* Variables and functions */
 int HZ ; 
 int NEXT_TIMER_MAX_DELTA ; 
 int __IFLA_CAIF_HSI_AGGREGATION_TOUT ; 
 int __IFLA_CAIF_HSI_HEAD_ALIGN ; 
 int __IFLA_CAIF_HSI_INACTIVITY_TOUT ; 
 int __IFLA_CAIF_HSI_QHIGH_WATERMARK ; 
 int __IFLA_CAIF_HSI_QLOW_WATERMARK ; 
 int __IFLA_CAIF_HSI_TAIL_ALIGN ; 
 void* FUNC0 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2(struct nlattr *data[], struct cfhsi *cfhsi)
{
	int i;

	if (!data) {
		FUNC1("no params data found\n");
		return;
	}

	i = __IFLA_CAIF_HSI_INACTIVITY_TOUT;
	/*
	 * Inactivity timeout in millisecs. Lowest possible value is 1,
	 * and highest possible is NEXT_TIMER_MAX_DELTA.
	 */
	if (data[i]) {
		u32 inactivity_timeout = FUNC0(data[i]);
		/* Pre-calculate inactivity timeout. */
		cfhsi->cfg.inactivity_timeout =	inactivity_timeout * HZ / 1000;
		if (cfhsi->cfg.inactivity_timeout == 0)
			cfhsi->cfg.inactivity_timeout = 1;
		else if (cfhsi->cfg.inactivity_timeout > NEXT_TIMER_MAX_DELTA)
			cfhsi->cfg.inactivity_timeout = NEXT_TIMER_MAX_DELTA;
	}

	i = __IFLA_CAIF_HSI_AGGREGATION_TOUT;
	if (data[i])
		cfhsi->cfg.aggregation_timeout = FUNC0(data[i]);

	i = __IFLA_CAIF_HSI_HEAD_ALIGN;
	if (data[i])
		cfhsi->cfg.head_align = FUNC0(data[i]);

	i = __IFLA_CAIF_HSI_TAIL_ALIGN;
	if (data[i])
		cfhsi->cfg.tail_align = FUNC0(data[i]);

	i = __IFLA_CAIF_HSI_QHIGH_WATERMARK;
	if (data[i])
		cfhsi->cfg.q_high_mark = FUNC0(data[i]);

	i = __IFLA_CAIF_HSI_QLOW_WATERMARK;
	if (data[i])
		cfhsi->cfg.q_low_mark = FUNC0(data[i]);
}