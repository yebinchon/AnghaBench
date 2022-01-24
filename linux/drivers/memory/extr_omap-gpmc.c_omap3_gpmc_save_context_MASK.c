#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* cs_context; void* prefetch_control; void* prefetch_config2; void* prefetch_config1; void* config; void* timeout_ctrl; void* irqenable; void* sysconfig; } ;
struct TYPE_3__ {void* config7; void* config6; void* config5; void* config4; void* config3; void* config2; void* config1; scalar_t__ is_valid; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPMC_CONFIG ; 
 int /*<<< orphan*/  GPMC_CS_CONFIG1 ; 
 int /*<<< orphan*/  GPMC_CS_CONFIG2 ; 
 int /*<<< orphan*/  GPMC_CS_CONFIG3 ; 
 int /*<<< orphan*/  GPMC_CS_CONFIG4 ; 
 int /*<<< orphan*/  GPMC_CS_CONFIG5 ; 
 int /*<<< orphan*/  GPMC_CS_CONFIG6 ; 
 int /*<<< orphan*/  GPMC_CS_CONFIG7 ; 
 int /*<<< orphan*/  GPMC_IRQENABLE ; 
 int /*<<< orphan*/  GPMC_PREFETCH_CONFIG1 ; 
 int /*<<< orphan*/  GPMC_PREFETCH_CONFIG2 ; 
 int /*<<< orphan*/  GPMC_PREFETCH_CONTROL ; 
 int /*<<< orphan*/  GPMC_SYSCONFIG ; 
 int /*<<< orphan*/  GPMC_TIMEOUT_CONTROL ; 
 int /*<<< orphan*/  gpmc_base ; 
 TYPE_2__ gpmc_context ; 
 scalar_t__ FUNC0 (int) ; 
 int gpmc_cs_num ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(void)
{
	int i;

	if (!gpmc_base)
		return;

	gpmc_context.sysconfig = FUNC2(GPMC_SYSCONFIG);
	gpmc_context.irqenable = FUNC2(GPMC_IRQENABLE);
	gpmc_context.timeout_ctrl = FUNC2(GPMC_TIMEOUT_CONTROL);
	gpmc_context.config = FUNC2(GPMC_CONFIG);
	gpmc_context.prefetch_config1 = FUNC2(GPMC_PREFETCH_CONFIG1);
	gpmc_context.prefetch_config2 = FUNC2(GPMC_PREFETCH_CONFIG2);
	gpmc_context.prefetch_control = FUNC2(GPMC_PREFETCH_CONTROL);
	for (i = 0; i < gpmc_cs_num; i++) {
		gpmc_context.cs_context[i].is_valid = FUNC0(i);
		if (gpmc_context.cs_context[i].is_valid) {
			gpmc_context.cs_context[i].config1 =
				FUNC1(i, GPMC_CS_CONFIG1);
			gpmc_context.cs_context[i].config2 =
				FUNC1(i, GPMC_CS_CONFIG2);
			gpmc_context.cs_context[i].config3 =
				FUNC1(i, GPMC_CS_CONFIG3);
			gpmc_context.cs_context[i].config4 =
				FUNC1(i, GPMC_CS_CONFIG4);
			gpmc_context.cs_context[i].config5 =
				FUNC1(i, GPMC_CS_CONFIG5);
			gpmc_context.cs_context[i].config6 =
				FUNC1(i, GPMC_CS_CONFIG6);
			gpmc_context.cs_context[i].config7 =
				FUNC1(i, GPMC_CS_CONFIG7);
		}
	}
}