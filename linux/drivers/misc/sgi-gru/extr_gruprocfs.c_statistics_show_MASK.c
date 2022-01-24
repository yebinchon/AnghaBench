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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  asid_new ; 
 int /*<<< orphan*/  asid_next ; 
 int /*<<< orphan*/  asid_reuse ; 
 int /*<<< orphan*/  asid_wrap ; 
 int /*<<< orphan*/  assign_context ; 
 int /*<<< orphan*/  assign_context_failed ; 
 int /*<<< orphan*/  call_os ; 
 int /*<<< orphan*/  call_os_wait_queue ; 
 int /*<<< orphan*/  check_context_retarget_intr ; 
 int /*<<< orphan*/  check_context_unload ; 
 int /*<<< orphan*/  copy_gpa ; 
 int /*<<< orphan*/  flush_tlb ; 
 int /*<<< orphan*/  flush_tlb_gru ; 
 int /*<<< orphan*/  flush_tlb_gru_tgh ; 
 int /*<<< orphan*/  flush_tlb_gru_zero_asid ; 
 int /*<<< orphan*/  free_context ; 
 int /*<<< orphan*/  gms_alloc ; 
 int /*<<< orphan*/  gms_free ; 
 int /*<<< orphan*/  gts_alloc ; 
 int /*<<< orphan*/  gts_double_allocate ; 
 int /*<<< orphan*/  gts_free ; 
 int /*<<< orphan*/  intr ; 
 int /*<<< orphan*/  intr_cbr ; 
 int /*<<< orphan*/  intr_mm_lock_failed ; 
 int /*<<< orphan*/  intr_spurious ; 
 int /*<<< orphan*/  intr_tfh ; 
 int /*<<< orphan*/  load_kernel_context ; 
 int /*<<< orphan*/  load_user_context ; 
 int /*<<< orphan*/  lock_kernel_context ; 
 int /*<<< orphan*/  mesq_noop ; 
 int /*<<< orphan*/  mesq_noop_amo_nacked ; 
 int /*<<< orphan*/  mesq_noop_lb_overflow ; 
 int /*<<< orphan*/  mesq_noop_page_overflow ; 
 int /*<<< orphan*/  mesq_noop_put_nacked ; 
 int /*<<< orphan*/  mesq_noop_qlimit_reached ; 
 int /*<<< orphan*/  mesq_noop_unexpected_error ; 
 int /*<<< orphan*/  mesq_qf_locked ; 
 int /*<<< orphan*/  mesq_qf_noop_not_full ; 
 int /*<<< orphan*/  mesq_qf_switch_head_failed ; 
 int /*<<< orphan*/  mesq_qf_unexpected_error ; 
 int /*<<< orphan*/  mesq_receive ; 
 int /*<<< orphan*/  mesq_receive_none ; 
 int /*<<< orphan*/  mesq_send ; 
 int /*<<< orphan*/  mesq_send_amo_nacked ; 
 int /*<<< orphan*/  mesq_send_failed ; 
 int /*<<< orphan*/  mesq_send_lb_overflow ; 
 int /*<<< orphan*/  mesq_send_put_nacked ; 
 int /*<<< orphan*/  mesq_send_qlimit_reached ; 
 int /*<<< orphan*/  mesq_send_unexpected_error ; 
 int /*<<< orphan*/  mmu_invalidate_page ; 
 int /*<<< orphan*/  mmu_invalidate_range ; 
 int /*<<< orphan*/  nopfn ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  read_gpa ; 
 int /*<<< orphan*/  set_context_option ; 
 int /*<<< orphan*/  steal_context_failed ; 
 int /*<<< orphan*/  steal_kernel_context ; 
 int /*<<< orphan*/  steal_user_context ; 
 int /*<<< orphan*/  tfh_stale_on_fault ; 
 int /*<<< orphan*/  tlb_dropin ; 
 int /*<<< orphan*/  tlb_dropin_fail_fmm ; 
 int /*<<< orphan*/  tlb_dropin_fail_idle ; 
 int /*<<< orphan*/  tlb_dropin_fail_invalid ; 
 int /*<<< orphan*/  tlb_dropin_fail_no_asid ; 
 int /*<<< orphan*/  tlb_dropin_fail_no_exception ; 
 int /*<<< orphan*/  tlb_dropin_fail_range_active ; 
 int /*<<< orphan*/  tlb_dropin_fail_upm ; 
 int /*<<< orphan*/  tlb_preload_page ; 
 int /*<<< orphan*/  unlock_kernel_context ; 
 int /*<<< orphan*/  user_exception ; 
 int /*<<< orphan*/  user_flush_tlb ; 
 int /*<<< orphan*/  user_unload_context ; 
 int /*<<< orphan*/  vdata_alloc ; 
 int /*<<< orphan*/  vdata_free ; 

__attribute__((used)) static int FUNC1(struct seq_file *s, void *p)
{
	FUNC0(s, vdata_alloc);
	FUNC0(s, vdata_free);
	FUNC0(s, gts_alloc);
	FUNC0(s, gts_free);
	FUNC0(s, gms_alloc);
	FUNC0(s, gms_free);
	FUNC0(s, gts_double_allocate);
	FUNC0(s, assign_context);
	FUNC0(s, assign_context_failed);
	FUNC0(s, free_context);
	FUNC0(s, load_user_context);
	FUNC0(s, load_kernel_context);
	FUNC0(s, lock_kernel_context);
	FUNC0(s, unlock_kernel_context);
	FUNC0(s, steal_user_context);
	FUNC0(s, steal_kernel_context);
	FUNC0(s, steal_context_failed);
	FUNC0(s, nopfn);
	FUNC0(s, asid_new);
	FUNC0(s, asid_next);
	FUNC0(s, asid_wrap);
	FUNC0(s, asid_reuse);
	FUNC0(s, intr);
	FUNC0(s, intr_cbr);
	FUNC0(s, intr_tfh);
	FUNC0(s, intr_spurious);
	FUNC0(s, intr_mm_lock_failed);
	FUNC0(s, call_os);
	FUNC0(s, call_os_wait_queue);
	FUNC0(s, user_flush_tlb);
	FUNC0(s, user_unload_context);
	FUNC0(s, user_exception);
	FUNC0(s, set_context_option);
	FUNC0(s, check_context_retarget_intr);
	FUNC0(s, check_context_unload);
	FUNC0(s, tlb_dropin);
	FUNC0(s, tlb_preload_page);
	FUNC0(s, tlb_dropin_fail_no_asid);
	FUNC0(s, tlb_dropin_fail_upm);
	FUNC0(s, tlb_dropin_fail_invalid);
	FUNC0(s, tlb_dropin_fail_range_active);
	FUNC0(s, tlb_dropin_fail_idle);
	FUNC0(s, tlb_dropin_fail_fmm);
	FUNC0(s, tlb_dropin_fail_no_exception);
	FUNC0(s, tfh_stale_on_fault);
	FUNC0(s, mmu_invalidate_range);
	FUNC0(s, mmu_invalidate_page);
	FUNC0(s, flush_tlb);
	FUNC0(s, flush_tlb_gru);
	FUNC0(s, flush_tlb_gru_tgh);
	FUNC0(s, flush_tlb_gru_zero_asid);
	FUNC0(s, copy_gpa);
	FUNC0(s, read_gpa);
	FUNC0(s, mesq_receive);
	FUNC0(s, mesq_receive_none);
	FUNC0(s, mesq_send);
	FUNC0(s, mesq_send_failed);
	FUNC0(s, mesq_noop);
	FUNC0(s, mesq_send_unexpected_error);
	FUNC0(s, mesq_send_lb_overflow);
	FUNC0(s, mesq_send_qlimit_reached);
	FUNC0(s, mesq_send_amo_nacked);
	FUNC0(s, mesq_send_put_nacked);
	FUNC0(s, mesq_qf_locked);
	FUNC0(s, mesq_qf_noop_not_full);
	FUNC0(s, mesq_qf_switch_head_failed);
	FUNC0(s, mesq_qf_unexpected_error);
	FUNC0(s, mesq_noop_unexpected_error);
	FUNC0(s, mesq_noop_lb_overflow);
	FUNC0(s, mesq_noop_qlimit_reached);
	FUNC0(s, mesq_noop_amo_nacked);
	FUNC0(s, mesq_noop_put_nacked);
	FUNC0(s, mesq_noop_page_overflow);
	return 0;
}