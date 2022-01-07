
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_pix_format {scalar_t__ xfer_func; scalar_t__ quantization; scalar_t__ ycbcr_enc; scalar_t__ flags; int colorspace; int field; } ;


 int V4L2_COLORSPACE_RAW ;
 int V4L2_FIELD_NONE ;

__attribute__((used)) static void v4l_pix_format_touch(struct v4l2_pix_format *p)
{





 p->field = V4L2_FIELD_NONE;
 p->colorspace = V4L2_COLORSPACE_RAW;
 p->flags = 0;
 p->ycbcr_enc = 0;
 p->quantization = 0;
 p->xfer_func = 0;
}
