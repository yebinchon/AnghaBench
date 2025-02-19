
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct vp9_fb_info {TYPE_4__* fb; } ;
struct vdec_vp9_vsi {int refresh_frm_flags; size_t new_fb_idx; int sf_frm_cnt; int sf_frm_idx; int sf_next_ref_fb_idx; TYPE_3__* frm_bufs; scalar_t__ show_frame; int * ref_frm_map; } ;
struct vdec_vp9_inst {TYPE_4__* cur_fb; struct vdec_vp9_vsi* vsi; } ;
struct vdec_fb {int dummy; } ;
struct TYPE_8__ {scalar_t__ size; scalar_t__ va; } ;
struct TYPE_7__ {scalar_t__ size; scalar_t__ va; } ;
struct TYPE_10__ {TYPE_2__ base_y; TYPE_1__ base_c; } ;
struct TYPE_9__ {scalar_t__ ref_cnt; struct vp9_fb_info buf; } ;


 int memcpy (void*,void*,scalar_t__) ;
 int mtk_vcodec_err (struct vdec_vp9_inst*,char*,scalar_t__,scalar_t__) ;
 int vp9_add_to_fb_disp_list (struct vdec_vp9_inst*,TYPE_4__*) ;
 int vp9_add_to_fb_free_list (struct vdec_vp9_inst*,struct vdec_fb*) ;
 int vp9_free_sf_ref_fb (TYPE_4__*) ;
 int vp9_get_sf_ref_fb (struct vdec_vp9_inst*) ;
 int vp9_is_sf_ref_fb (struct vdec_vp9_inst*,TYPE_4__*) ;
 int vp9_ref_cnt_fb (struct vdec_vp9_inst*,int *,size_t) ;
 struct vdec_fb* vp9_rm_from_fb_use_list (struct vdec_vp9_inst*,scalar_t__) ;

__attribute__((used)) static void vp9_swap_frm_bufs(struct vdec_vp9_inst *inst)
{
 struct vdec_vp9_vsi *vsi = inst->vsi;
 struct vp9_fb_info *frm_to_show;
 int ref_index = 0, mask;

 for (mask = vsi->refresh_frm_flags; mask; mask >>= 1) {
  if (mask & 1)
   vp9_ref_cnt_fb(inst, &vsi->ref_frm_map[ref_index],
           vsi->new_fb_idx);
  ++ref_index;
 }

 frm_to_show = &vsi->frm_bufs[vsi->new_fb_idx].buf;
 vsi->frm_bufs[vsi->new_fb_idx].ref_cnt--;

 if (frm_to_show->fb != inst->cur_fb) {




  if ((frm_to_show->fb != ((void*)0)) &&
   (inst->cur_fb->base_y.size >=
   frm_to_show->fb->base_y.size) &&
   (inst->cur_fb->base_c.size >=
   frm_to_show->fb->base_c.size)) {
   memcpy((void *)inst->cur_fb->base_y.va,
    (void *)frm_to_show->fb->base_y.va,
    frm_to_show->fb->base_y.size);
   memcpy((void *)inst->cur_fb->base_c.va,
    (void *)frm_to_show->fb->base_c.va,
    frm_to_show->fb->base_c.size);
  } else {




   if (frm_to_show->fb != ((void*)0))
    mtk_vcodec_err(inst,
     "inst->cur_fb->base_y.size=%zu, frm_to_show->fb.base_y.size=%zu",
     inst->cur_fb->base_y.size,
     frm_to_show->fb->base_y.size);
  }
  if (!vp9_is_sf_ref_fb(inst, inst->cur_fb)) {
   if (vsi->show_frame)
    vp9_add_to_fb_disp_list(inst, inst->cur_fb);
  }
 } else {
  if (!vp9_is_sf_ref_fb(inst, inst->cur_fb)) {
   if (vsi->show_frame)
    vp9_add_to_fb_disp_list(inst, frm_to_show->fb);
  }
 }




 if (vsi->frm_bufs[vsi->new_fb_idx].ref_cnt == 0) {
  if (!vp9_is_sf_ref_fb(
   inst, vsi->frm_bufs[vsi->new_fb_idx].buf.fb)) {
   struct vdec_fb *fb;

   fb = vp9_rm_from_fb_use_list(inst,
   vsi->frm_bufs[vsi->new_fb_idx].buf.fb->base_y.va);

   vp9_add_to_fb_free_list(inst, fb);
  } else {
   vp9_free_sf_ref_fb(
    vsi->frm_bufs[vsi->new_fb_idx].buf.fb);
  }
 }




 if (vsi->sf_frm_cnt > 0 && vsi->sf_frm_idx != vsi->sf_frm_cnt - 1)
  vsi->sf_next_ref_fb_idx = vp9_get_sf_ref_fb(inst);
}
