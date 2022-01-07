
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct gru_tlb_fault_handle {scalar_t__ status; unsigned long state; int cause; unsigned long missvaddr; int missasid; int indexway; } ;
struct TYPE_4__ {int tlbdropin; } ;
struct gru_thread_state {unsigned char ts_tlb_preload_count; int ts_sizeavail; int ts_force_cch_reload; TYPE_2__ ustats; TYPE_1__* ts_gms; } ;
struct gru_state {int gs_gid; } ;
struct gru_instruction_bits {scalar_t__ status; unsigned long state; int cause; unsigned long missvaddr; int missasid; int indexway; } ;
struct gru_control_block_extended {int dummy; } ;
struct TYPE_3__ {int ms_range_active; } ;


 int EAGAIN ;
 int EFAULT ;
 int GAA_RAM ;
 int GRU_PAGESIZE (int) ;
 int GRU_SIZEAVAIL (int) ;
 int PAGE_SHIFT ;
 int STAT (int ) ;
 int TFHCAUSE_TLB_MOD ;
 unsigned long TFHSTATE_IDLE ;
 unsigned long TFHSTATE_MISS_FMM ;
 scalar_t__ TFHSTATUS_EXCEPTION ;
 int VTOP_INVALID ;
 int VTOP_RETRY ;
 scalar_t__ atomic_read (int *) ;
 int gru_cb_set_istatus_active (struct gru_tlb_fault_handle*) ;
 int gru_dbg (int ,char*,...) ;
 int gru_flush_cache (struct gru_tlb_fault_handle*) ;
 int gru_flush_cache_cbe (struct gru_control_block_extended*) ;
 int gru_preload_tlb (struct gru_state*,struct gru_thread_state*,int,unsigned long,int,int,unsigned char,struct gru_tlb_fault_handle*,struct gru_control_block_extended*) ;
 struct gru_control_block_extended* gru_tfh_to_cbe (struct gru_tlb_fault_handle*) ;
 int gru_update_cch (struct gru_thread_state*) ;
 int gru_vtop (struct gru_thread_state*,unsigned long,int,int,unsigned long*,int*) ;
 int grudev ;
 int prefetchw (struct gru_control_block_extended*) ;
 int rmb () ;
 int sync_core () ;
 int tfh_exception (struct gru_tlb_fault_handle*) ;
 int tfh_stale_on_fault ;
 int tfh_user_polling_mode (struct gru_tlb_fault_handle*) ;
 int tfh_write_restart (struct gru_tlb_fault_handle*,unsigned long,int ,unsigned long,int,int,int ) ;
 int tlb_dropin ;
 int tlb_dropin_fail_fmm ;
 int tlb_dropin_fail_idle ;
 int tlb_dropin_fail_invalid ;
 int tlb_dropin_fail_no_asid ;
 int tlb_dropin_fail_no_exception ;
 int tlb_dropin_fail_range_active ;
 int tlb_dropin_fail_upm ;
 scalar_t__ unlikely (unsigned char) ;

__attribute__((used)) static int gru_try_dropin(struct gru_state *gru,
     struct gru_thread_state *gts,
     struct gru_tlb_fault_handle *tfh,
     struct gru_instruction_bits *cbk)
{
 struct gru_control_block_extended *cbe = ((void*)0);
 unsigned char tlb_preload_count = gts->ts_tlb_preload_count;
 int pageshift = 0, asid, write, ret, atomic = !cbk, indexway;
 unsigned long gpa = 0, vaddr = 0;
 if (unlikely(tlb_preload_count)) {
  cbe = gru_tfh_to_cbe(tfh);
  prefetchw(cbe);
 }






 if (tfh->status != TFHSTATUS_EXCEPTION) {
  gru_flush_cache(tfh);
  sync_core();
  if (tfh->status != TFHSTATUS_EXCEPTION)
   goto failnoexception;
  STAT(tfh_stale_on_fault);
 }
 if (tfh->state == TFHSTATE_IDLE)
  goto failidle;
 if (tfh->state == TFHSTATE_MISS_FMM && cbk)
  goto failfmm;

 write = (tfh->cause & TFHCAUSE_TLB_MOD) != 0;
 vaddr = tfh->missvaddr;
 asid = tfh->missasid;
 indexway = tfh->indexway;
 if (asid == 0)
  goto failnoasid;

 rmb();





 if (atomic_read(&gts->ts_gms->ms_range_active))
  goto failactive;

 ret = gru_vtop(gts, vaddr, write, atomic, &gpa, &pageshift);
 if (ret == VTOP_INVALID)
  goto failinval;
 if (ret == VTOP_RETRY)
  goto failupm;

 if (!(gts->ts_sizeavail & GRU_SIZEAVAIL(pageshift))) {
  gts->ts_sizeavail |= GRU_SIZEAVAIL(pageshift);
  if (atomic || !gru_update_cch(gts)) {
   gts->ts_force_cch_reload = 1;
   goto failupm;
  }
 }

 if (unlikely(cbe) && pageshift == PAGE_SHIFT) {
  gru_preload_tlb(gru, gts, atomic, vaddr, asid, write, tlb_preload_count, tfh, cbe);
  gru_flush_cache_cbe(cbe);
 }

 gru_cb_set_istatus_active(cbk);
 gts->ustats.tlbdropin++;
 tfh_write_restart(tfh, gpa, GAA_RAM, vaddr, asid, write,
     GRU_PAGESIZE(pageshift));
 gru_dbg(grudev,
  "%s: gid %d, gts 0x%p, tfh 0x%p, vaddr 0x%lx, asid 0x%x, indexway 0x%x,"
  " rw %d, ps %d, gpa 0x%lx\n",
  atomic ? "atomic" : "non-atomic", gru->gs_gid, gts, tfh, vaddr, asid,
  indexway, write, pageshift, gpa);
 STAT(tlb_dropin);
 return 0;

failnoasid:

 STAT(tlb_dropin_fail_no_asid);
 gru_dbg(grudev, "FAILED no_asid tfh: 0x%p, vaddr 0x%lx\n", tfh, vaddr);
 if (!cbk)
  tfh_user_polling_mode(tfh);
 else
  gru_flush_cache(tfh);
 gru_flush_cache_cbe(cbe);
 return -EAGAIN;

failupm:

 tfh_user_polling_mode(tfh);
 gru_flush_cache_cbe(cbe);
 STAT(tlb_dropin_fail_upm);
 gru_dbg(grudev, "FAILED upm tfh: 0x%p, vaddr 0x%lx\n", tfh, vaddr);
 return 1;

failfmm:

 gru_flush_cache(tfh);
 gru_flush_cache_cbe(cbe);
 STAT(tlb_dropin_fail_fmm);
 gru_dbg(grudev, "FAILED fmm tfh: 0x%p, state %d\n", tfh, tfh->state);
 return 0;

failnoexception:

 gru_flush_cache(tfh);
 gru_flush_cache_cbe(cbe);
 if (cbk)
  gru_flush_cache(cbk);
 STAT(tlb_dropin_fail_no_exception);
 gru_dbg(grudev, "FAILED non-exception tfh: 0x%p, status %d, state %d\n",
  tfh, tfh->status, tfh->state);
 return 0;

failidle:

 gru_flush_cache(tfh);
 gru_flush_cache_cbe(cbe);
 if (cbk)
  gru_flush_cache(cbk);
 STAT(tlb_dropin_fail_idle);
 gru_dbg(grudev, "FAILED idle tfh: 0x%p, state %d\n", tfh, tfh->state);
 return 0;

failinval:

 tfh_exception(tfh);
 gru_flush_cache_cbe(cbe);
 STAT(tlb_dropin_fail_invalid);
 gru_dbg(grudev, "FAILED inval tfh: 0x%p, vaddr 0x%lx\n", tfh, vaddr);
 return -EFAULT;

failactive:

 if (!cbk)
  tfh_user_polling_mode(tfh);
 else
  gru_flush_cache(tfh);
 gru_flush_cache_cbe(cbe);
 STAT(tlb_dropin_fail_range_active);
 gru_dbg(grudev, "FAILED range active: tfh 0x%p, vaddr 0x%lx\n",
  tfh, vaddr);
 return 1;
}
