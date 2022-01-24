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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GRU_HANDLE_STRIDE ; 
 int GRU_NUM_KERNEL_DSR_BYTES ; 
 struct gru_blade_state* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4(int dsr_bytes, void **cb, void **dsr)
{
	struct gru_blade_state *bs;
	int lcpu;

	FUNC0(dsr_bytes > GRU_NUM_KERNEL_DSR_BYTES);
	FUNC2();
	bs = FUNC1(-1);
	lcpu = FUNC3();
	*cb = bs->kernel_cb + lcpu * GRU_HANDLE_STRIDE;
	*dsr = bs->kernel_dsr + lcpu * GRU_NUM_KERNEL_DSR_BYTES;
	return 0;
}