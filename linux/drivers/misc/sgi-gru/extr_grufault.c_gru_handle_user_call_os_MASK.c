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
struct gru_tlb_fault_handle {int dummy; } ;
struct gru_thread_state {int ts_cbr_au_count; int /*<<< orphan*/  ts_ctxnum; TYPE_1__* ts_gru; scalar_t__ ts_force_cch_reload; } ;
struct TYPE_2__ {int gs_gid; int /*<<< orphan*/  gs_gru_base_vaddr; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int GRU_CBR_AU_SIZE ; 
 int GRU_HANDLE_STRIDE ; 
 int GRU_NUM_CB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  call_os ; 
 int FUNC1 (void*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct gru_tlb_fault_handle* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,unsigned long,int,struct gru_thread_state*) ; 
 struct gru_thread_state* FUNC6 (unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (struct gru_thread_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct gru_thread_state*) ; 
 int FUNC9 (struct gru_thread_state*,struct gru_tlb_fault_handle*,void*) ; 
 int /*<<< orphan*/  grudev ; 
 int FUNC10 (struct gru_thread_state*,int) ; 

int FUNC11(unsigned long cb)
{
	struct gru_tlb_fault_handle *tfh;
	struct gru_thread_state *gts;
	void *cbk;
	int ucbnum, cbrnum, ret = -EINVAL;

	FUNC0(call_os);

	/* sanity check the cb pointer */
	ucbnum = FUNC1((void *)cb);
	if ((cb & (GRU_HANDLE_STRIDE - 1)) || ucbnum >= GRU_NUM_CB)
		return -EINVAL;

	gts = FUNC6(cb);
	if (!gts)
		return -EINVAL;
	FUNC5(grudev, "address 0x%lx, gid %d, gts 0x%p\n", cb, gts->ts_gru ? gts->ts_gru->gs_gid : -1, gts);

	if (ucbnum >= gts->ts_cbr_au_count * GRU_CBR_AU_SIZE)
		goto exit;

	FUNC4(gts);

	/*
	 * CCH may contain stale data if ts_force_cch_reload is set.
	 */
	if (gts->ts_gru && gts->ts_force_cch_reload) {
		gts->ts_force_cch_reload = 0;
		FUNC8(gts);
	}

	ret = -EAGAIN;
	cbrnum = FUNC10(gts, ucbnum);
	if (gts->ts_gru) {
		tfh = FUNC3(gts->ts_gru, cbrnum);
		cbk = FUNC2(gts->ts_gru->gs_gru_base_vaddr,
				gts->ts_ctxnum, ucbnum);
		ret = FUNC9(gts, tfh, cbk);
	}
exit:
	FUNC7(gts);
	return ret;
}