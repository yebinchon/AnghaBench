
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int bus_width; } ;
struct vpfe_subdev_info {TYPE_1__ vpfe_param; } ;
struct TYPE_6__ {unsigned int bpp; } ;
struct TYPE_5__ {unsigned int bpp; } ;
struct vpfe_fmt {TYPE_3__ s; TYPE_2__ l; int fourcc; } ;
struct vpfe_device {struct vpfe_subdev_info* current_subdev; } ;
struct v4l2_pix_format {int bytesperline; unsigned int width; int sizeimage; int height; int pixelformat; } ;
struct v4l2_mbus_framefmt {int code; } ;


 int ALIGN (unsigned int,int) ;
 scalar_t__ WARN_ON (int ) ;
 struct vpfe_fmt* find_format_by_code (int ) ;
 int memset (struct v4l2_pix_format*,int ,int) ;
 int pr_err (char*) ;
 int v4l2_fill_pix_format (struct v4l2_pix_format*,struct v4l2_mbus_framefmt const*) ;

__attribute__((used)) static void
mbus_to_pix(struct vpfe_device *vpfe,
     const struct v4l2_mbus_framefmt *mbus,
     struct v4l2_pix_format *pix, unsigned int *bpp)
{
 struct vpfe_subdev_info *sdinfo = vpfe->current_subdev;
 unsigned int bus_width = sdinfo->vpfe_param.bus_width;
 struct vpfe_fmt *fmt;

 fmt = find_format_by_code(mbus->code);
 if (WARN_ON(fmt == ((void*)0))) {
  pr_err("Invalid mbus code set\n");
  *bpp = 1;
  return;
 }

 memset(pix, 0, sizeof(*pix));
 v4l2_fill_pix_format(pix, mbus);
 pix->pixelformat = fmt->fourcc;
 *bpp = (bus_width == 10) ? fmt->l.bpp : fmt->s.bpp;


 pix->bytesperline = ALIGN(pix->width * *bpp, 32);
 pix->sizeimage = pix->bytesperline * pix->height;
}
