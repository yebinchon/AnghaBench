
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpfe_fmt {int code; } ;
struct vpfe_device {int dummy; } ;
struct v4l2_pix_format {int pixelformat; } ;
struct v4l2_mbus_framefmt {int dummy; } ;


 struct vpfe_fmt* find_format_by_pix (int ) ;
 struct vpfe_fmt* formats ;
 int memset (struct v4l2_mbus_framefmt*,int ,int) ;
 int v4l2_fill_mbus_format (struct v4l2_mbus_framefmt*,struct v4l2_pix_format*,int ) ;
 int vpfe_dbg (int,struct vpfe_device*,char*,int ) ;

__attribute__((used)) static void pix_to_mbus(struct vpfe_device *vpfe,
   struct v4l2_pix_format *pix_fmt,
   struct v4l2_mbus_framefmt *mbus_fmt)
{
 struct vpfe_fmt *fmt;

 fmt = find_format_by_pix(pix_fmt->pixelformat);
 if (!fmt) {

  vpfe_dbg(3, vpfe, "Invalid pixel code: %x, default used instead\n",
   pix_fmt->pixelformat);
  fmt = &formats[0];
 }

 memset(mbus_fmt, 0, sizeof(*mbus_fmt));
 v4l2_fill_mbus_format(mbus_fmt, pix_fmt, fmt->code);
}
