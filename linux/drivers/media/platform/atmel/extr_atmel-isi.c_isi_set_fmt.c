
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct v4l2_subdev_format {int format; int which; } ;
struct TYPE_4__ {int pix; } ;
struct v4l2_format {TYPE_2__ fmt; } ;
struct isi_format {int mbus_code; } ;
struct TYPE_3__ {int subdev; } ;
struct atmel_isi {struct isi_format const* current_fmt; struct v4l2_format fmt; TYPE_1__ entity; } ;


 int V4L2_SUBDEV_FORMAT_ACTIVE ;
 int isi_try_fmt (struct atmel_isi*,struct v4l2_format*,struct isi_format const**) ;
 int pad ;
 int set_fmt ;
 int v4l2_fill_mbus_format (int *,int *,int ) ;
 int v4l2_subdev_call (int ,int ,int ,int *,struct v4l2_subdev_format*) ;

__attribute__((used)) static int isi_set_fmt(struct atmel_isi *isi, struct v4l2_format *f)
{
 struct v4l2_subdev_format format = {
  .which = V4L2_SUBDEV_FORMAT_ACTIVE,
 };
 const struct isi_format *current_fmt;
 int ret;

 ret = isi_try_fmt(isi, f, &current_fmt);
 if (ret)
  return ret;

 v4l2_fill_mbus_format(&format.format, &f->fmt.pix,
         current_fmt->mbus_code);
 ret = v4l2_subdev_call(isi->entity.subdev, pad,
          set_fmt, ((void*)0), &format);
 if (ret < 0)
  return ret;

 isi->fmt = *f;
 isi->current_fmt = current_fmt;

 return 0;
}
