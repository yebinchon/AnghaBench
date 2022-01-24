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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct iwl_mvm {int init_status; TYPE_1__ led; } ;

/* Variables and functions */
 int IWL_MVM_INIT_STATUS_LEDS_INIT_COMPLETE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(struct iwl_mvm *mvm)
{
	if (!(mvm->init_status & IWL_MVM_INIT_STATUS_LEDS_INIT_COMPLETE))
		return;

	FUNC1(&mvm->led);
	FUNC0(mvm->led.name);
	mvm->init_status &= ~IWL_MVM_INIT_STATUS_LEDS_INIT_COMPLETE;
}