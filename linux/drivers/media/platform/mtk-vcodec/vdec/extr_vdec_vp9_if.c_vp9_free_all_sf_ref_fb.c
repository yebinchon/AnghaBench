
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vdec_vp9_vsi {TYPE_3__* sf_ref_fb; } ;
struct vdec_vp9_inst {int ctx; struct vdec_vp9_vsi* vsi; } ;
struct TYPE_5__ {scalar_t__ va; } ;
struct TYPE_4__ {TYPE_2__ base_c; TYPE_2__ base_y; } ;
struct TYPE_6__ {scalar_t__ used; TYPE_1__ fb; } ;


 int ARRAY_SIZE (TYPE_3__*) ;
 int mtk_vcodec_mem_free (int ,TYPE_2__*) ;

__attribute__((used)) static void vp9_free_all_sf_ref_fb(struct vdec_vp9_inst *inst)
{
 int i;
 struct vdec_vp9_vsi *vsi = inst->vsi;

 for (i = 0; i < ARRAY_SIZE(vsi->sf_ref_fb); i++) {
  if (vsi->sf_ref_fb[i].fb.base_y.va) {
   mtk_vcodec_mem_free(inst->ctx,
    &vsi->sf_ref_fb[i].fb.base_y);
   mtk_vcodec_mem_free(inst->ctx,
    &vsi->sf_ref_fb[i].fb.base_c);
   vsi->sf_ref_fb[i].used = 0;
  }
 }
}
