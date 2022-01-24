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
struct gru_blade_state {void* kernel_dsr; void* kernel_cb; } ;

/* Variables and functions */
 int FUNC0 (unsigned long) ; 
 struct gru_blade_state* FUNC1 (unsigned long) ; 
 int GRU_HANDLE_STRIDE ; 
 int GRU_NUM_KERNEL_DSR_BYTES ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int) ; 

void FUNC4(unsigned long han,  void **cb, void **dsr)
{
	struct gru_blade_state *bs = FUNC1(han);
	int blade_id = FUNC0(han);
	int ncpus;

	FUNC2(blade_id);
	ncpus = FUNC3(blade_id);
	if (cb)
		*cb = bs->kernel_cb + ncpus * GRU_HANDLE_STRIDE;
	if (dsr)
		*dsr = bs->kernel_dsr + ncpus * GRU_NUM_KERNEL_DSR_BYTES;
}