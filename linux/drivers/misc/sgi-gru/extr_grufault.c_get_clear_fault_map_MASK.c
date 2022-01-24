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
struct gru_tlb_fault_map {unsigned long* fault_bits; unsigned long* done_bits; } ;
struct gru_state {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GRU_NUM_CBE ; 
 struct gru_tlb_fault_map* FUNC1 (struct gru_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct gru_tlb_fault_map*) ; 
 int /*<<< orphan*/  FUNC4 (struct gru_tlb_fault_map*) ; 
 unsigned long FUNC5 (unsigned long*,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct gru_state *gru,
				struct gru_tlb_fault_map *imap,
				struct gru_tlb_fault_map *dmap)
{
	unsigned long i, k;
	struct gru_tlb_fault_map *tfm;

	tfm = FUNC1(gru, FUNC2());
	FUNC4(tfm);		/* Helps on hardware, required for emulator */
	for (i = 0; i < FUNC0(GRU_NUM_CBE); i++) {
		k = tfm->fault_bits[i];
		if (k)
			k = FUNC5(&tfm->fault_bits[i], 0UL);
		imap->fault_bits[i] = k;
		k = tfm->done_bits[i];
		if (k)
			k = FUNC5(&tfm->done_bits[i], 0UL);
		dmap->fault_bits[i] = k;
	}

	/*
	 * Not functionally required but helps performance. (Required
	 * on emulator)
	 */
	FUNC3(tfm);
}