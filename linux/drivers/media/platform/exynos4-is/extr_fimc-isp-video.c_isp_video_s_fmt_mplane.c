
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_pix_format_mplane {int height; int width; } ;
struct TYPE_3__ {struct v4l2_pix_format_mplane pix_mp; } ;
struct v4l2_format {TYPE_1__ fmt; } ;
struct param_dma_output {int height; int width; int bitwidth; int plane; int order; int format; } ;
struct TYPE_4__ {struct v4l2_pix_format_mplane pixfmt; struct fimc_fmt const* format; } ;
struct fimc_isp {TYPE_2__ video_capture; } ;
struct fimc_is {int dummy; } ;
struct fimc_fmt {int * depth; int memplanes; } ;
struct file {int dummy; } ;


 int DMA_OUTPUT_FORMAT_BAYER ;
 int DMA_OUTPUT_ORDER_GB_BG ;
 int EINVAL ;
 scalar_t__ WARN_ON (int ) ;
 struct param_dma_output* __get_isp_dma2 (struct fimc_is*) ;
 int __isp_video_try_fmt (struct fimc_isp*,struct v4l2_pix_format_mplane*,struct fimc_fmt const**) ;
 int fimc_is_mem_barrier () ;
 struct fimc_is* fimc_isp_to_is (struct fimc_isp*) ;
 struct fimc_isp* video_drvdata (struct file*) ;

__attribute__((used)) static int isp_video_s_fmt_mplane(struct file *file, void *priv,
     struct v4l2_format *f)
{
 struct fimc_isp *isp = video_drvdata(file);
 struct fimc_is *is = fimc_isp_to_is(isp);
 struct v4l2_pix_format_mplane *pixm = &f->fmt.pix_mp;
 const struct fimc_fmt *ifmt = ((void*)0);
 struct param_dma_output *dma = __get_isp_dma2(is);

 __isp_video_try_fmt(isp, pixm, &ifmt);

 if (WARN_ON(ifmt == ((void*)0)))
  return -EINVAL;

 dma->format = DMA_OUTPUT_FORMAT_BAYER;
 dma->order = DMA_OUTPUT_ORDER_GB_BG;
 dma->plane = ifmt->memplanes;
 dma->bitwidth = ifmt->depth[0];
 dma->width = pixm->width;
 dma->height = pixm->height;

 fimc_is_mem_barrier();

 isp->video_capture.format = ifmt;
 isp->video_capture.pixfmt = *pixm;

 return 0;
}
