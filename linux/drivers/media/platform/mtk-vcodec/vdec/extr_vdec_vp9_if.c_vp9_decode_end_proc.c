
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdec_vp9_vsi {int frm_num; int pic_h; int pic_w; int show_existing_frame; } ;
struct vdec_vp9_inst {int vpu; struct vdec_vp9_vsi* vsi; } ;


 int mtk_vcodec_debug (struct vdec_vp9_inst*,char*,int ,...) ;
 int mtk_vcodec_err (struct vdec_vp9_inst*,char*,...) ;
 int vp9_swap_frm_bufs (struct vdec_vp9_inst*) ;
 int vp9_wait_dec_end (struct vdec_vp9_inst*) ;
 scalar_t__ vpu_dec_end (int *) ;

__attribute__((used)) static bool vp9_decode_end_proc(struct vdec_vp9_inst *inst)
{
 struct vdec_vp9_vsi *vsi = inst->vsi;
 bool ret = 0;

 if (!vsi->show_existing_frame) {
  ret = vp9_wait_dec_end(inst);
  if (!ret) {
   mtk_vcodec_err(inst, "Decode failed, Decode Timeout @[%d]",
    vsi->frm_num);
   return 0;
  }

  if (vpu_dec_end(&inst->vpu)) {
   mtk_vcodec_err(inst, "vp9_dec_vpu_end failed");
   return 0;
  }
  mtk_vcodec_debug(inst, "Decode Ok @%d (%d/%d)", vsi->frm_num,
    vsi->pic_w, vsi->pic_h);
 } else {
  mtk_vcodec_debug(inst, "Decode Ok @%d (show_existing_frame)",
    vsi->frm_num);
 }

 vp9_swap_frm_bufs(inst);
 vsi->frm_num++;
 return 1;
}
