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
struct efx_nic {unsigned int timer_quantum_ns; unsigned int timer_max_ns; int /*<<< orphan*/  net_dev; } ;
typedef  int /*<<< orphan*/  efx_dword_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct efx_nic*) ; 
 scalar_t__ FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  GET_EVQ_TMR_PROPERTIES_OUT_BUG35388_TMR_MAX_COUNT ; 
 int /*<<< orphan*/  GET_EVQ_TMR_PROPERTIES_OUT_BUG35388_TMR_NS_PER_COUNT ; 
 int /*<<< orphan*/  GET_EVQ_TMR_PROPERTIES_OUT_MCDI_TMR_MAX_NS ; 
 int /*<<< orphan*/  GET_EVQ_TMR_PROPERTIES_OUT_MCDI_TMR_STEP_NS ; 
 int /*<<< orphan*/  GET_EVQ_TMR_PROPERTIES_OUT_TMR_REG_MAX_COUNT ; 
 int /*<<< orphan*/  GET_EVQ_TMR_PROPERTIES_OUT_TMR_REG_NS_PER_COUNT ; 
 void* FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  probe ; 

__attribute__((used)) static void FUNC4(struct efx_nic *efx,
					  const efx_dword_t *data)
{
	unsigned int max_count;

	if (FUNC1(efx)) {
		efx->timer_quantum_ns = FUNC2(data,
			GET_EVQ_TMR_PROPERTIES_OUT_MCDI_TMR_STEP_NS);
		efx->timer_max_ns = FUNC2(data,
			GET_EVQ_TMR_PROPERTIES_OUT_MCDI_TMR_MAX_NS);
	} else if (FUNC0(efx)) {
		efx->timer_quantum_ns = FUNC2(data,
			GET_EVQ_TMR_PROPERTIES_OUT_BUG35388_TMR_NS_PER_COUNT);
		max_count = FUNC2(data,
			GET_EVQ_TMR_PROPERTIES_OUT_BUG35388_TMR_MAX_COUNT);
		efx->timer_max_ns = max_count * efx->timer_quantum_ns;
	} else {
		efx->timer_quantum_ns = FUNC2(data,
			GET_EVQ_TMR_PROPERTIES_OUT_TMR_REG_NS_PER_COUNT);
		max_count = FUNC2(data,
			GET_EVQ_TMR_PROPERTIES_OUT_TMR_REG_MAX_COUNT);
		efx->timer_max_ns = max_count * efx->timer_quantum_ns;
	}

	FUNC3(efx, probe, efx->net_dev,
		  "got timer properties from MC: quantum %u ns; max %u ns\n",
		  efx->timer_quantum_ns, efx->timer_max_ns);
}