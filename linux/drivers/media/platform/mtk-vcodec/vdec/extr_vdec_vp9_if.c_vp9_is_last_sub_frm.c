
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vdec_vp9_vsi {scalar_t__ sf_frm_cnt; scalar_t__ sf_frm_idx; } ;
struct vdec_vp9_inst {struct vdec_vp9_vsi* vsi; } ;



__attribute__((used)) static bool vp9_is_last_sub_frm(struct vdec_vp9_inst *inst)
{
 struct vdec_vp9_vsi *vsi = inst->vsi;

 if (vsi->sf_frm_cnt <= 0 || vsi->sf_frm_idx == vsi->sf_frm_cnt)
  return 1;

 return 0;
}
