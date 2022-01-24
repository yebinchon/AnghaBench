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
struct gru_thread_state {int ts_user_blade_id; int ts_ctxnum; struct gru_state* ts_gru; int /*<<< orphan*/  ts_dsr_au_count; int /*<<< orphan*/  ts_cbr_au_count; } ;
struct gru_state {void* gs_gru_base_vaddr; } ;
struct gru_blade_state {int /*<<< orphan*/  bs_kgts_sema; int /*<<< orphan*/  kernel_dsr; int /*<<< orphan*/  kernel_cb; struct gru_thread_state* bs_kgts; scalar_t__ bs_async_dsr_bytes; scalar_t__ bs_async_cbrs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int GRU_NUM_KERNEL_CBR ; 
 int GRU_NUM_KERNEL_DSR_BYTES ; 
 int /*<<< orphan*/  FUNC2 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int,int /*<<< orphan*/ ) ; 
 struct gru_thread_state* FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC11 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  load_kernel_context ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int) ; 

__attribute__((used)) static void FUNC15(struct gru_blade_state *bs, int blade_id)
{
	struct gru_state *gru;
	struct gru_thread_state *kgts;
	void *vaddr;
	int ctxnum, ncpus;

	FUNC13(&bs->bs_kgts_sema);
	FUNC4(&bs->bs_kgts_sema);

	if (!bs->bs_kgts) {
		do {
			bs->bs_kgts = FUNC8(NULL, 0, 0, 0, 0, 0);
			if (!FUNC2(bs->bs_kgts))
				break;
			FUNC12(1);
		} while (true);
		bs->bs_kgts->ts_user_blade_id = blade_id;
	}
	kgts = bs->bs_kgts;

	if (!kgts->ts_gru) {
		FUNC3(load_kernel_context);
		ncpus = FUNC14(blade_id);
		kgts->ts_cbr_au_count = FUNC0(
			GRU_NUM_KERNEL_CBR * ncpus + bs->bs_async_cbrs);
		kgts->ts_dsr_au_count = FUNC1(
			GRU_NUM_KERNEL_DSR_BYTES * ncpus +
				bs->bs_async_dsr_bytes);
		while (!FUNC9(kgts)) {
			FUNC12(1);
			FUNC11(kgts);
		}
		FUNC10(kgts);
		gru = bs->bs_kgts->ts_gru;
		vaddr = gru->gs_gru_base_vaddr;
		ctxnum = kgts->ts_ctxnum;
		bs->kernel_cb = FUNC6(vaddr, ctxnum, 0);
		bs->kernel_dsr = FUNC7(vaddr, ctxnum, 0);
	}
	FUNC5(&bs->bs_kgts_sema);
}