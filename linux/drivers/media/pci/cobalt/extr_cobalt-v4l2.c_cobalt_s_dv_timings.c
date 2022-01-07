
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int width; int height; } ;
struct v4l2_dv_timings {TYPE_1__ bt; } ;
struct file {int dummy; } ;
struct cobalt_stream {int input; int width; int stride; int bpp; int height; struct v4l2_dv_timings timings; int sd; int q; } ;


 int EBUSY ;
 struct v4l2_dv_timings cea1080p60 ;
 int s_dv_timings ;
 scalar_t__ v4l2_match_dv_timings (struct v4l2_dv_timings*,struct v4l2_dv_timings*,int ,int) ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_dv_timings*) ;
 scalar_t__ vb2_is_busy (int *) ;
 int video ;
 struct cobalt_stream* video_drvdata (struct file*) ;

__attribute__((used)) static int cobalt_s_dv_timings(struct file *file, void *priv_fh,
        struct v4l2_dv_timings *timings)
{
 struct cobalt_stream *s = video_drvdata(file);
 int err;

 if (s->input == 1) {
  *timings = cea1080p60;
  return 0;
 }

 if (v4l2_match_dv_timings(timings, &s->timings, 0, 1))
  return 0;

 if (vb2_is_busy(&s->q))
  return -EBUSY;

 err = v4l2_subdev_call(s->sd,
   video, s_dv_timings, timings);
 if (!err) {
  s->timings = *timings;
  s->width = timings->bt.width;
  s->height = timings->bt.height;
  s->stride = timings->bt.width * s->bpp;
 }
 return err;
}
