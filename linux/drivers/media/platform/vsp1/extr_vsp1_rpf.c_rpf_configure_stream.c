
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
struct TYPE_10__ {int config; } ;
struct v4l2_pix_format_mplane {int num_planes; int flags; TYPE_1__* plane_fmt; } ;
struct vsp1_rwpf {int mult_alpha; int brx_input; TYPE_5__ entity; struct v4l2_pix_format_mplane format; struct vsp1_format_info* fmtinfo; } ;
struct vsp1_pipeline {scalar_t__ interlaced; TYPE_4__* brx; } ;
struct vsp1_format_info {int hwfmt; unsigned int swap; scalar_t__ alpha; scalar_t__ swap_uv; scalar_t__ swap_yc; } ;
struct vsp1_entity {TYPE_3__* vsp1; int subdev; } ;
struct vsp1_dl_list {int dummy; } ;
struct vsp1_dl_body {int dummy; } ;
struct v4l2_rect {unsigned int left; unsigned int top; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; } ;
struct TYPE_9__ {int config; } ;
struct TYPE_8__ {TYPE_2__* info; } ;
struct TYPE_7__ {int gen; } ;
struct TYPE_6__ {int bytesperline; } ;


 int RWPF_PAD_SINK ;
 int RWPF_PAD_SOURCE ;
 int V4L2_PIX_FMT_FLAG_PREMUL_ALPHA ;
 int V4L2_SEL_TGT_COMPOSE ;
 int VI6_RPF_ALPH_SEL ;
 unsigned int VI6_RPF_ALPH_SEL_AEXT_EXT ;
 unsigned int VI6_RPF_ALPH_SEL_ASEL_FIXED ;
 unsigned int VI6_RPF_ALPH_SEL_ASEL_PACKED ;
 int VI6_RPF_CKEY_CTRL ;
 int VI6_RPF_DSWAP ;
 int VI6_RPF_INFMT ;
 int VI6_RPF_INFMT_CIPM ;
 int VI6_RPF_INFMT_CSC ;
 int VI6_RPF_INFMT_RDFMT_SHIFT ;
 int VI6_RPF_INFMT_SPUVS ;
 int VI6_RPF_INFMT_SPYCS ;
 int VI6_RPF_LOC ;
 unsigned int VI6_RPF_LOC_HCOORD_SHIFT ;
 unsigned int VI6_RPF_LOC_VCOORD_SHIFT ;
 int VI6_RPF_MSK_CTRL ;
 int VI6_RPF_MULT_ALPHA_A_MMD_NONE ;
 int VI6_RPF_MULT_ALPHA_A_MMD_RATIO ;
 int VI6_RPF_MULT_ALPHA_P_MMD_NONE ;
 int VI6_RPF_MULT_ALPHA_P_MMD_RATIO ;
 int VI6_RPF_SRCM_PSTRIDE ;
 int VI6_RPF_SRCM_PSTRIDE_C_SHIFT ;
 int VI6_RPF_SRCM_PSTRIDE_Y_SHIFT ;
 struct vsp1_rwpf* to_rwpf (int *) ;
 struct v4l2_mbus_framefmt* vsp1_entity_get_pad_format (TYPE_5__*,int ,int ) ;
 struct v4l2_rect* vsp1_entity_get_pad_selection (TYPE_4__*,int ,int ,int ) ;
 int vsp1_rpf_write (struct vsp1_rwpf*,struct vsp1_dl_body*,int ,unsigned int) ;

__attribute__((used)) static void rpf_configure_stream(struct vsp1_entity *entity,
     struct vsp1_pipeline *pipe,
     struct vsp1_dl_list *dl,
     struct vsp1_dl_body *dlb)
{
 struct vsp1_rwpf *rpf = to_rwpf(&entity->subdev);
 const struct vsp1_format_info *fmtinfo = rpf->fmtinfo;
 const struct v4l2_pix_format_mplane *format = &rpf->format;
 const struct v4l2_mbus_framefmt *source_format;
 const struct v4l2_mbus_framefmt *sink_format;
 unsigned int left = 0;
 unsigned int top = 0;
 u32 pstride;
 u32 infmt;


 pstride = format->plane_fmt[0].bytesperline
  << VI6_RPF_SRCM_PSTRIDE_Y_SHIFT;
 if (format->num_planes > 1)
  pstride |= format->plane_fmt[1].bytesperline
   << VI6_RPF_SRCM_PSTRIDE_C_SHIFT;






 if (pipe->interlaced)
  pstride *= 2;

 vsp1_rpf_write(rpf, dlb, VI6_RPF_SRCM_PSTRIDE, pstride);


 sink_format = vsp1_entity_get_pad_format(&rpf->entity,
       rpf->entity.config,
       RWPF_PAD_SINK);
 source_format = vsp1_entity_get_pad_format(&rpf->entity,
         rpf->entity.config,
         RWPF_PAD_SOURCE);

 infmt = VI6_RPF_INFMT_CIPM
       | (fmtinfo->hwfmt << VI6_RPF_INFMT_RDFMT_SHIFT);

 if (fmtinfo->swap_yc)
  infmt |= VI6_RPF_INFMT_SPYCS;
 if (fmtinfo->swap_uv)
  infmt |= VI6_RPF_INFMT_SPUVS;

 if (sink_format->code != source_format->code)
  infmt |= VI6_RPF_INFMT_CSC;

 vsp1_rpf_write(rpf, dlb, VI6_RPF_INFMT, infmt);
 vsp1_rpf_write(rpf, dlb, VI6_RPF_DSWAP, fmtinfo->swap);


 if (pipe->brx) {
  const struct v4l2_rect *compose;

  compose = vsp1_entity_get_pad_selection(pipe->brx,
       pipe->brx->config,
       rpf->brx_input,
       V4L2_SEL_TGT_COMPOSE);
  left = compose->left;
  top = compose->top;
 }

 if (pipe->interlaced)
  top /= 2;

 vsp1_rpf_write(rpf, dlb, VI6_RPF_LOC,
         (left << VI6_RPF_LOC_HCOORD_SHIFT) |
         (top << VI6_RPF_LOC_VCOORD_SHIFT));
 vsp1_rpf_write(rpf, dlb, VI6_RPF_ALPH_SEL, VI6_RPF_ALPH_SEL_AEXT_EXT |
         (fmtinfo->alpha ? VI6_RPF_ALPH_SEL_ASEL_PACKED
           : VI6_RPF_ALPH_SEL_ASEL_FIXED));

 if (entity->vsp1->info->gen == 3) {
  u32 mult;

  if (fmtinfo->alpha) {
   bool premultiplied = format->flags
        & V4L2_PIX_FMT_FLAG_PREMUL_ALPHA;

   mult = VI6_RPF_MULT_ALPHA_A_MMD_RATIO
        | (premultiplied ?
    VI6_RPF_MULT_ALPHA_P_MMD_RATIO :
    VI6_RPF_MULT_ALPHA_P_MMD_NONE);
  } else {






   mult = VI6_RPF_MULT_ALPHA_A_MMD_NONE
        | VI6_RPF_MULT_ALPHA_P_MMD_NONE;
  }

  rpf->mult_alpha = mult;
 }

 vsp1_rpf_write(rpf, dlb, VI6_RPF_MSK_CTRL, 0);
 vsp1_rpf_write(rpf, dlb, VI6_RPF_CKEY_CTRL, 0);

}
