
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_enum_dv_timings {scalar_t__ pad; int timings; int reserved; scalar_t__ index; } ;
struct file {int dummy; } ;
struct cobalt_stream {int input; int sd; } ;


 int EINVAL ;
 int cea1080p60 ;
 int enum_dv_timings ;
 int memset (int ,int ,int) ;
 int pad ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_enum_dv_timings*) ;
 struct cobalt_stream* video_drvdata (struct file*) ;

__attribute__((used)) static int cobalt_enum_dv_timings(struct file *file, void *priv_fh,
        struct v4l2_enum_dv_timings *timings)
{
 struct cobalt_stream *s = video_drvdata(file);

 if (s->input == 1) {
  if (timings->index)
   return -EINVAL;
  memset(timings->reserved, 0, sizeof(timings->reserved));
  timings->timings = cea1080p60;
  return 0;
 }
 timings->pad = 0;
 return v4l2_subdev_call(s->sd,
   pad, enum_dv_timings, timings);
}
