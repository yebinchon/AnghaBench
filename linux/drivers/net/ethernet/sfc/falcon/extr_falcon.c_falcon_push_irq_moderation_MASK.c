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
struct ef4_nic {int dummy; } ;
struct ef4_channel {int /*<<< orphan*/  channel; int /*<<< orphan*/  irq_moderation_us; struct ef4_nic* efx; } ;
typedef  int /*<<< orphan*/  ef4_dword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FFE_BB_TIMER_MODE_DIS ; 
 int /*<<< orphan*/  FFE_BB_TIMER_MODE_INT_HLDOFF ; 
 int /*<<< orphan*/  FRF_AB_TC_TIMER_MODE ; 
 int /*<<< orphan*/  FRF_AB_TC_TIMER_VAL ; 
 scalar_t__ FR_AA_TIMER_COMMAND_KER ; 
 scalar_t__ FR_BZ_TIMER_COMMAND_P0 ; 
 unsigned int FUNC2 (struct ef4_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ef4_nic*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct ef4_channel *channel)
{
	ef4_dword_t timer_cmd;
	struct ef4_nic *efx = channel->efx;

	/* Set timer register */
	if (channel->irq_moderation_us) {
		unsigned int ticks;

		ticks = FUNC2(efx, channel->irq_moderation_us);
		FUNC1(timer_cmd,
				     FRF_AB_TC_TIMER_MODE,
				     FFE_BB_TIMER_MODE_INT_HLDOFF,
				     FRF_AB_TC_TIMER_VAL,
				     ticks - 1);
	} else {
		FUNC1(timer_cmd,
				     FRF_AB_TC_TIMER_MODE,
				     FFE_BB_TIMER_MODE_DIS,
				     FRF_AB_TC_TIMER_VAL, 0);
	}
	FUNC0(FR_AA_TIMER_COMMAND_KER != FR_BZ_TIMER_COMMAND_P0);
	FUNC3(efx, &timer_cmd, FR_BZ_TIMER_COMMAND_P0,
			       channel->channel);
}