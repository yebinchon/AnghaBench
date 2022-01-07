
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vpfe_device {int ccdc; } ;
struct v4l2_rect {int height; int width; } ;
struct TYPE_3__ {int height; int bytesperline; int sizeimage; int field; int pixelformat; int width; } ;
struct TYPE_4__ {TYPE_1__ pix; } ;
struct v4l2_format {TYPE_2__ fmt; int type; } ;
typedef enum ccdc_frmfmt { ____Placeholder_ccdc_frmfmt } ccdc_frmfmt ;
typedef enum ccdc_buftype { ____Placeholder_ccdc_buftype } ccdc_buftype ;


 int CCDC_BUFTYPE_FLD_INTERLEAVED ;
 int CCDC_BUFTYPE_FLD_SEPARATED ;
 int CCDC_FRMFMT_INTERLACED ;
 int CCDC_FRMFMT_PROGRESSIVE ;
 int EINVAL ;
 int V4L2_BUF_TYPE_VIDEO_CAPTURE ;
 int V4L2_FIELD_INTERLACED ;
 int V4L2_FIELD_NONE ;
 int V4L2_FIELD_SEQ_TB ;
 int memset (struct v4l2_format*,int ,int) ;
 int vpfe_ccdc_get_buftype (int *) ;
 int vpfe_ccdc_get_frame_format (int *) ;
 int vpfe_ccdc_get_image_window (int *,struct v4l2_rect*) ;
 int vpfe_ccdc_get_line_length (int *) ;
 int vpfe_ccdc_get_pixel_format (int *) ;
 int vpfe_err (struct vpfe_device*,char*) ;

__attribute__((used)) static int vpfe_get_ccdc_image_format(struct vpfe_device *vpfe,
          struct v4l2_format *f)
{
 struct v4l2_rect image_win;
 enum ccdc_buftype buf_type;
 enum ccdc_frmfmt frm_fmt;

 memset(f, 0, sizeof(*f));
 f->type = V4L2_BUF_TYPE_VIDEO_CAPTURE;
 vpfe_ccdc_get_image_window(&vpfe->ccdc, &image_win);
 f->fmt.pix.width = image_win.width;
 f->fmt.pix.height = image_win.height;
 f->fmt.pix.bytesperline = vpfe_ccdc_get_line_length(&vpfe->ccdc);
 f->fmt.pix.sizeimage = f->fmt.pix.bytesperline *
    f->fmt.pix.height;
 buf_type = vpfe_ccdc_get_buftype(&vpfe->ccdc);
 f->fmt.pix.pixelformat = vpfe_ccdc_get_pixel_format(&vpfe->ccdc);
 frm_fmt = vpfe_ccdc_get_frame_format(&vpfe->ccdc);

 if (frm_fmt == CCDC_FRMFMT_PROGRESSIVE) {
  f->fmt.pix.field = V4L2_FIELD_NONE;
 } else if (frm_fmt == CCDC_FRMFMT_INTERLACED) {
  if (buf_type == CCDC_BUFTYPE_FLD_INTERLEAVED) {
   f->fmt.pix.field = V4L2_FIELD_INTERLACED;
   } else if (buf_type == CCDC_BUFTYPE_FLD_SEPARATED) {
   f->fmt.pix.field = V4L2_FIELD_SEQ_TB;
  } else {
   vpfe_err(vpfe, "Invalid buf_type\n");
   return -EINVAL;
  }
 } else {
  vpfe_err(vpfe, "Invalid frm_fmt\n");
  return -EINVAL;
 }
 return 0;
}
