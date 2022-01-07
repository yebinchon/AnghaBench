
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_pix_format_mplane {int width; int height; int num_planes; TYPE_3__* plane_fmt; int quantization; int ycbcr_enc; int xfer_func; int colorspace; int pixelformat; int field; } ;
struct TYPE_4__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; int type; } ;
struct mtk_mdp_frame {int width; int height; TYPE_2__* fmt; } ;
struct mtk_mdp_ctx {int id; int quant; int ycbcr_enc; int xfer_func; int colorspace; } ;
struct file {int dummy; } ;
struct TYPE_6__ {int bytesperline; int sizeimage; } ;
struct TYPE_5__ {int num_planes; int* row_depth; int* depth; int pixelformat; } ;


 int V4L2_FIELD_NONE ;
 struct mtk_mdp_ctx* fh_to_ctx (void*) ;
 struct mtk_mdp_frame* mtk_mdp_ctx_get_frame (struct mtk_mdp_ctx*,int ) ;
 int mtk_mdp_dbg (int,char*,int ,int,...) ;

__attribute__((used)) static int mtk_mdp_m2m_g_fmt_mplane(struct file *file, void *fh,
        struct v4l2_format *f)
{
 struct mtk_mdp_ctx *ctx = fh_to_ctx(fh);
 struct mtk_mdp_frame *frame;
 struct v4l2_pix_format_mplane *pix_mp;
 int i;

 mtk_mdp_dbg(2, "[%d] type:%d", ctx->id, f->type);

 frame = mtk_mdp_ctx_get_frame(ctx, f->type);
 pix_mp = &f->fmt.pix_mp;

 pix_mp->width = frame->width;
 pix_mp->height = frame->height;
 pix_mp->field = V4L2_FIELD_NONE;
 pix_mp->pixelformat = frame->fmt->pixelformat;
 pix_mp->num_planes = frame->fmt->num_planes;
 pix_mp->colorspace = ctx->colorspace;
 pix_mp->xfer_func = ctx->xfer_func;
 pix_mp->ycbcr_enc = ctx->ycbcr_enc;
 pix_mp->quantization = ctx->quant;
 mtk_mdp_dbg(2, "[%d] wxh:%dx%d", ctx->id,
      pix_mp->width, pix_mp->height);

 for (i = 0; i < pix_mp->num_planes; ++i) {
  pix_mp->plane_fmt[i].bytesperline = (frame->width *
   frame->fmt->row_depth[i]) / 8;
  pix_mp->plane_fmt[i].sizeimage = (frame->width *
   frame->height * frame->fmt->depth[i]) / 8;

  mtk_mdp_dbg(2, "[%d] p%d, bpl:%d, sizeimage:%d", ctx->id, i,
       pix_mp->plane_fmt[i].bytesperline,
       pix_mp->plane_fmt[i].sizeimage);
 }

 return 0;
}
