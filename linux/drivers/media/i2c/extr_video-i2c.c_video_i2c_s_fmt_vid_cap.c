
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct video_i2c_data {int vb_vidq; } ;
struct v4l2_format {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 scalar_t__ vb2_is_busy (int *) ;
 struct video_i2c_data* video_drvdata (struct file*) ;
 int video_i2c_try_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;

__attribute__((used)) static int video_i2c_s_fmt_vid_cap(struct file *file, void *fh,
         struct v4l2_format *fmt)
{
 struct video_i2c_data *data = video_drvdata(file);

 if (vb2_is_busy(&data->vb_vidq))
  return -EBUSY;

 return video_i2c_try_fmt_vid_cap(file, fh, fmt);
}
