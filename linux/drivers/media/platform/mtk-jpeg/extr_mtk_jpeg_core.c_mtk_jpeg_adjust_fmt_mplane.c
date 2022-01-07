
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct v4l2_pix_format_mplane {int num_planes; TYPE_3__* plane_fmt; int pixelformat; int height; int width; } ;
struct TYPE_4__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {int type; TYPE_1__ fmt; } ;
struct mtk_jpeg_q_data {int * sizeimage; int * bytesperline; TYPE_2__* fmt; int h; int w; } ;
struct mtk_jpeg_ctx {int dummy; } ;
struct TYPE_6__ {int sizeimage; int bytesperline; } ;
struct TYPE_5__ {int colplanes; int fourcc; } ;


 struct mtk_jpeg_q_data* mtk_jpeg_get_q_data (struct mtk_jpeg_ctx*,int ) ;

__attribute__((used)) static void mtk_jpeg_adjust_fmt_mplane(struct mtk_jpeg_ctx *ctx,
           struct v4l2_format *f)
{
 struct v4l2_pix_format_mplane *pix_mp = &f->fmt.pix_mp;
 struct mtk_jpeg_q_data *q_data;
 int i;

 q_data = mtk_jpeg_get_q_data(ctx, f->type);

 pix_mp->width = q_data->w;
 pix_mp->height = q_data->h;
 pix_mp->pixelformat = q_data->fmt->fourcc;
 pix_mp->num_planes = q_data->fmt->colplanes;

 for (i = 0; i < pix_mp->num_planes; i++) {
  pix_mp->plane_fmt[i].bytesperline = q_data->bytesperline[i];
  pix_mp->plane_fmt[i].sizeimage = q_data->sizeimage[i];
 }
}
