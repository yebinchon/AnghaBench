
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
struct v4l2_pix_format_mplane {int width; int height; int num_planes; TYPE_7__* plane_fmt; int reserved; int quantization; int ycbcr_enc; int xfer_func; int colorspace; int pixelformat; int field; } ;
struct TYPE_8__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {int type; TYPE_1__ fmt; } ;
struct mtk_mdp_variant {TYPE_6__* pix_min; TYPE_4__* pix_align; TYPE_3__* pix_max; } ;
struct mtk_mdp_fmt {int num_planes; int* row_depth; int* depth; TYPE_5__* align; int pixelformat; } ;
struct mtk_mdp_dev {TYPE_2__* pdev; struct mtk_mdp_variant* variant; } ;
struct mtk_mdp_ctx {int id; int quant; int ycbcr_enc; int xfer_func; int colorspace; struct mtk_mdp_dev* mdp_dev; } ;
struct TYPE_14__ {int bytesperline; int sizeimage; int reserved; } ;
struct TYPE_13__ {int org_w; int org_h; int target_rot_dis_w; int target_rot_dis_h; } ;
struct TYPE_12__ {int org_w; int org_h; } ;
struct TYPE_11__ {int org_w; int org_h; } ;
struct TYPE_10__ {int target_rot_dis_w; int target_rot_dis_h; } ;
struct TYPE_9__ {int dev; } ;


 int V4L2_FIELD_NONE ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int dev_dbg (int *,char*,int ) ;
 int memset (int ,int ,int) ;
 int mtk_mdp_bound_align_image (int*,int,int,int,int*,int,int,int) ;
 int mtk_mdp_dbg (int,char*,int ,int,int,int,int,...) ;
 struct mtk_mdp_fmt* mtk_mdp_find_fmt (int ,int ) ;
 struct mtk_mdp_fmt* mtk_mdp_find_fmt_by_index (int ,int ) ;

__attribute__((used)) static const struct mtk_mdp_fmt *mtk_mdp_try_fmt_mplane(struct mtk_mdp_ctx *ctx,
       struct v4l2_format *f)
{
 struct mtk_mdp_dev *mdp = ctx->mdp_dev;
 struct mtk_mdp_variant *variant = mdp->variant;
 struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
 const struct mtk_mdp_fmt *fmt;
 u32 max_w, max_h, align_w, align_h;
 u32 min_w, min_h, org_w, org_h;
 int i;

 fmt = mtk_mdp_find_fmt(pix_mp->pixelformat, f->type);
 if (!fmt)
  fmt = mtk_mdp_find_fmt_by_index(0, f->type);
 if (!fmt) {
  dev_dbg(&ctx->mdp_dev->pdev->dev,
   "pixelformat format 0x%X invalid\n",
   pix_mp->pixelformat);
  return ((void*)0);
 }

 pix_mp->field = V4L2_FIELD_NONE;
 pix_mp->pixelformat = fmt->pixelformat;
 if (!V4L2_TYPE_IS_OUTPUT(f->type)) {
  pix_mp->colorspace = ctx->colorspace;
  pix_mp->xfer_func = ctx->xfer_func;
  pix_mp->ycbcr_enc = ctx->ycbcr_enc;
  pix_mp->quantization = ctx->quant;
 }
 memset(pix_mp->reserved, 0, sizeof(pix_mp->reserved));

 max_w = variant->pix_max->target_rot_dis_w;
 max_h = variant->pix_max->target_rot_dis_h;

 if (fmt->align == ((void*)0)) {

  align_w = variant->pix_align->org_w;
  align_h = variant->pix_align->org_h;
 } else {
  align_w = fmt->align->org_w;
  align_h = fmt->align->org_h;
 }

 if (V4L2_TYPE_IS_OUTPUT(f->type)) {
  min_w = variant->pix_min->org_w;
  min_h = variant->pix_min->org_h;
 } else {
  min_w = variant->pix_min->target_rot_dis_w;
  min_h = variant->pix_min->target_rot_dis_h;
 }

 mtk_mdp_dbg(2, "[%d] type:%d, wxh:%ux%u, align:%ux%u, max:%ux%u",
      ctx->id, f->type, pix_mp->width, pix_mp->height,
      align_w, align_h, max_w, max_h);




 org_w = pix_mp->width;
 org_h = pix_mp->height;

 mtk_mdp_bound_align_image(&pix_mp->width, min_w, max_w, align_w,
      &pix_mp->height, min_h, max_h, align_h);

 if (org_w != pix_mp->width || org_h != pix_mp->height)
  mtk_mdp_dbg(1, "[%d] size change:%ux%u to %ux%u", ctx->id,
       org_w, org_h, pix_mp->width, pix_mp->height);
 pix_mp->num_planes = fmt->num_planes;

 for (i = 0; i < pix_mp->num_planes; ++i) {
  int bpl = (pix_mp->width * fmt->row_depth[i]) / 8;
  int sizeimage = (pix_mp->width * pix_mp->height *
   fmt->depth[i]) / 8;

  pix_mp->plane_fmt[i].bytesperline = bpl;
  if (pix_mp->plane_fmt[i].sizeimage < sizeimage)
   pix_mp->plane_fmt[i].sizeimage = sizeimage;
  memset(pix_mp->plane_fmt[i].reserved, 0,
         sizeof(pix_mp->plane_fmt[i].reserved));
  mtk_mdp_dbg(2, "[%d] p%d, bpl:%d, sizeimage:%u (%u)", ctx->id,
       i, bpl, pix_mp->plane_fmt[i].sizeimage, sizeimage);
 }

 return fmt;
}
