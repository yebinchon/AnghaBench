
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dv_timings_cap {scalar_t__ pad; } ;
struct file {int dummy; } ;
struct cobalt_stream {int sd; } ;


 int dv_timings_cap ;
 int pad ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_dv_timings_cap*) ;
 struct cobalt_stream* video_drvdata (struct file*) ;

__attribute__((used)) static int cobalt_dv_timings_cap(struct file *file, void *priv_fh,
        struct v4l2_dv_timings_cap *cap)
{
 struct cobalt_stream *s = video_drvdata(file);

 cap->pad = 0;
 return v4l2_subdev_call(s->sd,
   pad, dv_timings_cap, cap);
}
