
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_mbus_framefmt {scalar_t__ code; } ;
struct s5k4ecgx_pixfmt {scalar_t__ code; } ;


 int ARRAY_SIZE (struct s5k4ecgx_pixfmt const*) ;
 struct s5k4ecgx_pixfmt const* s5k4ecgx_formats ;

__attribute__((used)) static const struct s5k4ecgx_pixfmt *s5k4ecgx_try_fmt(struct v4l2_subdev *sd,
         struct v4l2_mbus_framefmt *mf)
{
 int i = ARRAY_SIZE(s5k4ecgx_formats);

 while (--i)
  if (mf->code == s5k4ecgx_formats[i].code)
   break;
 mf->code = s5k4ecgx_formats[i].code;

 return &s5k4ecgx_formats[i];
}
