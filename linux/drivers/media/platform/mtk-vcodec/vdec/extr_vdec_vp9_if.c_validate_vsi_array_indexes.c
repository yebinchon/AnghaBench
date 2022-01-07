
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdec_vp9_vsi {int sf_frm_idx; int frm_to_show_idx; int new_fb_idx; } ;
struct vdec_vp9_inst {int dummy; } ;


 int EIO ;
 int VP9_MAX_FRM_BUF_NUM ;
 int mtk_vcodec_err (struct vdec_vp9_inst*,char*,int) ;

__attribute__((used)) static int validate_vsi_array_indexes(struct vdec_vp9_inst *inst,
  struct vdec_vp9_vsi *vsi) {
 if (vsi->sf_frm_idx >= VP9_MAX_FRM_BUF_NUM - 1) {
  mtk_vcodec_err(inst, "Invalid vsi->sf_frm_idx=%u.",
    vsi->sf_frm_idx);
  return -EIO;
 }
 if (vsi->frm_to_show_idx >= VP9_MAX_FRM_BUF_NUM) {
  mtk_vcodec_err(inst, "Invalid vsi->frm_to_show_idx=%u.",
    vsi->frm_to_show_idx);
  return -EIO;
 }
 if (vsi->new_fb_idx >= VP9_MAX_FRM_BUF_NUM) {
  mtk_vcodec_err(inst, "Invalid vsi->new_fb_idx=%u.",
    vsi->new_fb_idx);
  return -EIO;
 }
 return 0;
}
