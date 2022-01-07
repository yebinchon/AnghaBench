
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_10__ {unsigned int index; int config; struct vsp1_device* vsp1; } ;
struct TYPE_6__ {scalar_t__ rotate; } ;
struct v4l2_pix_format_mplane {int num_planes; TYPE_2__* plane_fmt; } ;
struct vsp1_rwpf {int writeback; int outfmt; TYPE_5__ entity; TYPE_1__ flip; struct vsp1_format_info* fmtinfo; struct v4l2_pix_format_mplane format; } ;
struct vsp1_pipeline {int num_inputs; TYPE_4__* brx; struct vsp1_rwpf** inputs; int lif; } ;
struct vsp1_format_info {int hwfmt; int swap; scalar_t__ swap_uv; scalar_t__ swap_yc; scalar_t__ alpha; } ;
struct vsp1_entity {int subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;
struct vsp1_device {TYPE_3__* info; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_8__ {unsigned int rpf_count; } ;
struct TYPE_7__ {int bytesperline; } ;


 int RWPF_PAD_SINK ;
 int RWPF_PAD_SOURCE ;
 int VI6_DPR_WPF_FPORCH (unsigned int) ;
 int VI6_DPR_WPF_FPORCH_FP_WPFN ;
 int VI6_WFP_IRQ_ENB_DFEE ;
 int VI6_WPF_DSTM_STRIDE_C ;
 int VI6_WPF_DSTM_STRIDE_Y ;
 int VI6_WPF_DSWAP ;
 int VI6_WPF_IRQ_ENB (unsigned int) ;
 int VI6_WPF_IRQ_STA (unsigned int) ;
 int VI6_WPF_OUTFMT_CSC ;
 int VI6_WPF_OUTFMT_PXA ;
 int VI6_WPF_OUTFMT_ROT ;
 int VI6_WPF_OUTFMT_SPUVS ;
 int VI6_WPF_OUTFMT_SPYCS ;
 int VI6_WPF_OUTFMT_WRFMT_SHIFT ;
 int VI6_WPF_ROT_CTRL ;
 int VI6_WPF_ROT_CTRL_LMEM_WD_SHIFT ;
 int VI6_WPF_ROT_CTRL_LN16 ;
 int VI6_WPF_SRCRPF ;
 int VI6_WPF_SRCRPF_RPF_ACT_MST (unsigned int) ;
 int VI6_WPF_SRCRPF_RPF_ACT_SUB (unsigned int) ;
 int VI6_WPF_SRCRPF_VIRACT2_MST ;
 int VI6_WPF_SRCRPF_VIRACT_MST ;
 int VI6_WPF_WRBCK_CTRL (unsigned int) ;
 int VI6_WPF_WRBCK_CTRL_WBMD ;
 scalar_t__ VSP1_ENTITY_BRU ;
 int VSP1_HAS_WPF_HFLIP ;
 struct vsp1_rwpf* to_rwpf (int *) ;
 int vsp1_dl_body_write (struct vsp1_dl_body*,int ,int ) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_5__*,int ,int ) ;
 scalar_t__ vsp1_feature (struct vsp1_device*,int ) ;
 int vsp1_wpf_write (struct vsp1_rwpf*,struct vsp1_dl_body*,int ,int) ;
 int wpf_configure_writeback_chain (struct vsp1_rwpf*,struct vsp1_dl_list*) ;

__attribute__((used)) static void wpf_configure_stream(struct vsp1_entity *entity,
     struct vsp1_pipeline *pipe,
     struct vsp1_dl_list *dl,
     struct vsp1_dl_body *dlb)
{
 struct vsp1_rwpf *wpf = to_rwpf(&entity->subdev);
 struct vsp1_device *vsp1 = wpf->entity.vsp1;
 const struct v4l2_mbus_framefmt *source_format;
 const struct v4l2_mbus_framefmt *sink_format;
 unsigned int index = wpf->entity.index;
 unsigned int i;
 u32 outfmt = 0;
 u32 srcrpf = 0;
 int ret;

 sink_format = vsp1_entity_get_pad_format(&wpf->entity,
       wpf->entity.config,
       RWPF_PAD_SINK);
 source_format = vsp1_entity_get_pad_format(&wpf->entity,
         wpf->entity.config,
         RWPF_PAD_SOURCE);


 if (!pipe->lif || wpf->writeback) {
  const struct v4l2_pix_format_mplane *format = &wpf->format;
  const struct vsp1_format_info *fmtinfo = wpf->fmtinfo;

  outfmt = fmtinfo->hwfmt << VI6_WPF_OUTFMT_WRFMT_SHIFT;

  if (wpf->flip.rotate)
   outfmt |= VI6_WPF_OUTFMT_ROT;

  if (fmtinfo->alpha)
   outfmt |= VI6_WPF_OUTFMT_PXA;
  if (fmtinfo->swap_yc)
   outfmt |= VI6_WPF_OUTFMT_SPYCS;
  if (fmtinfo->swap_uv)
   outfmt |= VI6_WPF_OUTFMT_SPUVS;


  vsp1_wpf_write(wpf, dlb, VI6_WPF_DSTM_STRIDE_Y,
          format->plane_fmt[0].bytesperline);
  if (format->num_planes > 1)
   vsp1_wpf_write(wpf, dlb, VI6_WPF_DSTM_STRIDE_C,
           format->plane_fmt[1].bytesperline);

  vsp1_wpf_write(wpf, dlb, VI6_WPF_DSWAP, fmtinfo->swap);

  if (vsp1_feature(vsp1, VSP1_HAS_WPF_HFLIP) && index == 0)
   vsp1_wpf_write(wpf, dlb, VI6_WPF_ROT_CTRL,
           VI6_WPF_ROT_CTRL_LN16 |
           (256 << VI6_WPF_ROT_CTRL_LMEM_WD_SHIFT));
 }

 if (sink_format->code != source_format->code)
  outfmt |= VI6_WPF_OUTFMT_CSC;

 wpf->outfmt = outfmt;

 vsp1_dl_body_write(dlb, VI6_DPR_WPF_FPORCH(index),
      VI6_DPR_WPF_FPORCH_FP_WPFN);







 for (i = 0; i < vsp1->info->rpf_count; ++i) {
  struct vsp1_rwpf *input = pipe->inputs[i];

  if (!input)
   continue;

  srcrpf |= (!pipe->brx && pipe->num_inputs == 1)
   ? VI6_WPF_SRCRPF_RPF_ACT_MST(input->entity.index)
   : VI6_WPF_SRCRPF_RPF_ACT_SUB(input->entity.index);
 }

 if (pipe->brx)
  srcrpf |= pipe->brx->type == VSP1_ENTITY_BRU
   ? VI6_WPF_SRCRPF_VIRACT_MST
   : VI6_WPF_SRCRPF_VIRACT2_MST;

 vsp1_wpf_write(wpf, dlb, VI6_WPF_SRCRPF, srcrpf);


 vsp1_dl_body_write(dlb, VI6_WPF_IRQ_STA(index), 0);
 vsp1_dl_body_write(dlb, VI6_WPF_IRQ_ENB(index),
      VI6_WFP_IRQ_ENB_DFEE);
 if (wpf->writeback) {
  ret = wpf_configure_writeback_chain(wpf, dl);
  if (ret < 0)
   wpf->writeback = 0;
 }

 vsp1_dl_body_write(dlb, VI6_WPF_WRBCK_CTRL(index),
      wpf->writeback ? VI6_WPF_WRBCK_CTRL_WBMD : 0);
}
