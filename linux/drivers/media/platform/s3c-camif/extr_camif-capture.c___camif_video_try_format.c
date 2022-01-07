
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vp_pix_limits {int min_out_width; int out_width_align; int max_height; int max_sc_out_width; } ;
struct v4l2_rect {unsigned int width; unsigned int height; } ;
struct v4l2_pix_format {int width; int height; int bytesperline; int sizeimage; int field; int colorspace; int pixelformat; } ;
struct camif_vp {size_t id; struct camif_dev* camif; } ;
struct camif_fmt {int ybpp; int depth; int fourcc; } ;
struct camif_dev {TYPE_1__* variant; struct v4l2_rect camif_crop; } ;
struct TYPE_2__ {struct vp_pix_limits* vp_pix_limits; } ;


 int EINVAL ;
 int SCALER_MAX_RATIO ;
 int V4L2_COLORSPACE_JPEG ;
 int V4L2_FIELD_NONE ;
 scalar_t__ WARN_ON (int ) ;
 int ffs (unsigned int) ;
 unsigned int max_t (int ,int,unsigned int) ;
 unsigned int min (int ,int) ;
 int pr_debug (char*,int,int,unsigned int,unsigned int,unsigned int,...) ;
 unsigned int round_up (unsigned int,int) ;
 struct camif_fmt* s3c_camif_find_format (struct camif_vp*,int *,int ) ;
 int u32 ;
 int v4l_bound_align_image (int*,unsigned int,int ,int,int*,unsigned int,int ,int ,int ) ;

__attribute__((used)) static int __camif_video_try_format(struct camif_vp *vp,
        struct v4l2_pix_format *pix,
        const struct camif_fmt **ffmt)
{
 struct camif_dev *camif = vp->camif;
 struct v4l2_rect *crop = &camif->camif_crop;
 unsigned int wmin, hmin, sc_hrmax, sc_vrmax;
 const struct vp_pix_limits *pix_lim;
 const struct camif_fmt *fmt;

 fmt = s3c_camif_find_format(vp, &pix->pixelformat, 0);

 if (WARN_ON(fmt == ((void*)0)))
  return -EINVAL;

 if (ffmt)
  *ffmt = fmt;

 pix_lim = &camif->variant->vp_pix_limits[vp->id];

 pr_debug("fmt: %ux%u, crop: %ux%u, bytesperline: %u\n",
   pix->width, pix->height, crop->width, crop->height,
   pix->bytesperline);




 sc_hrmax = min(SCALER_MAX_RATIO, 1 << (ffs(crop->width) - 3));
 sc_vrmax = min(SCALER_MAX_RATIO, 1 << (ffs(crop->height) - 1));

 wmin = max_t(u32, pix_lim->min_out_width, crop->width / sc_hrmax);
 wmin = round_up(wmin, pix_lim->out_width_align);
 hmin = max_t(u32, 8, crop->height / sc_vrmax);
 hmin = round_up(hmin, 8);

 v4l_bound_align_image(&pix->width, wmin, pix_lim->max_sc_out_width,
         ffs(pix_lim->out_width_align) - 1,
         &pix->height, hmin, pix_lim->max_height, 0, 0);

 pix->bytesperline = pix->width * fmt->ybpp;
 pix->sizeimage = (pix->width * pix->height * fmt->depth) / 8;
 pix->pixelformat = fmt->fourcc;
 pix->colorspace = V4L2_COLORSPACE_JPEG;
 pix->field = V4L2_FIELD_NONE;

 pr_debug("%ux%u, wmin: %d, hmin: %d, sc_hrmax: %d, sc_vrmax: %d\n",
   pix->width, pix->height, wmin, hmin, sc_hrmax, sc_vrmax);

 return 0;
}
