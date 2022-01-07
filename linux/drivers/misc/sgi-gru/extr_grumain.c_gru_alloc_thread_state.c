
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm_area_struct {struct gru_vma_data* vm_private_data; } ;
struct gru_vma_data {int vd_lock; int vd_head; int vd_user_options; int vd_tlb_preload_count; int vd_dsr_au_count; int vd_cbr_au_count; } ;
struct gru_thread_state {int ts_next; } ;


 scalar_t__ IS_ERR (struct gru_thread_state*) ;
 int STAT (int ) ;
 struct gru_thread_state* gru_alloc_gts (struct vm_area_struct*,int ,int ,int ,int ,int) ;
 int gru_dbg (int ,char*,struct vm_area_struct*,struct gru_thread_state*) ;
 struct gru_thread_state* gru_find_current_gts_nolock (struct gru_vma_data*,int) ;
 int grudev ;
 int gts_double_allocate ;
 int gts_drop (struct gru_thread_state*) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct gru_thread_state *gru_alloc_thread_state(struct vm_area_struct *vma,
     int tsid)
{
 struct gru_vma_data *vdata = vma->vm_private_data;
 struct gru_thread_state *gts, *ngts;

 gts = gru_alloc_gts(vma, vdata->vd_cbr_au_count,
       vdata->vd_dsr_au_count,
       vdata->vd_tlb_preload_count,
       vdata->vd_user_options, tsid);
 if (IS_ERR(gts))
  return gts;

 spin_lock(&vdata->vd_lock);
 ngts = gru_find_current_gts_nolock(vdata, tsid);
 if (ngts) {
  gts_drop(gts);
  gts = ngts;
  STAT(gts_double_allocate);
 } else {
  list_add(&gts->ts_next, &vdata->vd_head);
 }
 spin_unlock(&vdata->vd_lock);
 gru_dbg(grudev, "vma %p, gts %p\n", vma, gts);
 return gts;
}
