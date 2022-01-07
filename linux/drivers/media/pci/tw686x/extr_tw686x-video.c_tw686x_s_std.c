
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct v4l2_format {int dummy; } ;
struct tw686x_video_channel {int fps; int vidq; int video_standard; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int tw686x_g_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 int tw686x_s_fmt_vid_cap (struct file*,void*,struct v4l2_format*) ;
 int tw686x_set_framerate (struct tw686x_video_channel*,int ) ;
 int tw686x_set_standard (struct tw686x_video_channel*,int ) ;
 scalar_t__ vb2_is_busy (int *) ;
 struct tw686x_video_channel* video_drvdata (struct file*) ;

__attribute__((used)) static int tw686x_s_std(struct file *file, void *priv, v4l2_std_id id)
{
 struct tw686x_video_channel *vc = video_drvdata(file);
 struct v4l2_format f;
 int ret;

 if (vc->video_standard == id)
  return 0;

 if (vb2_is_busy(&vc->vidq))
  return -EBUSY;

 ret = tw686x_set_standard(vc, id);
 if (ret)
  return ret;





 tw686x_g_fmt_vid_cap(file, priv, &f);
 tw686x_s_fmt_vid_cap(file, priv, &f);





 tw686x_set_framerate(vc, vc->fps);
 return 0;
}
