
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; } ;
struct sr030pc30_format {scalar_t__ code; } ;


 int ARRAY_SIZE (struct sr030pc30_format const*) ;
 struct sr030pc30_format const* sr030pc30_formats ;
 int sr030pc30_try_frame_size (struct v4l2_mbus_framefmt*) ;

__attribute__((used)) static const struct sr030pc30_format *try_fmt(struct v4l2_subdev *sd,
           struct v4l2_mbus_framefmt *mf)
{
 int i;

 sr030pc30_try_frame_size(mf);

 for (i = 0; i < ARRAY_SIZE(sr030pc30_formats); i++) {
  if (mf->code == sr030pc30_formats[i].code)
   break;
 }
 if (i == ARRAY_SIZE(sr030pc30_formats))
  i = 0;

 mf->code = sr030pc30_formats[i].code;

 return &sr030pc30_formats[i];
}
