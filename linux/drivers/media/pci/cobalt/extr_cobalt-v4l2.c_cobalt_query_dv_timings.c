
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_dv_timings {int dummy; } ;
struct file {int dummy; } ;
struct cobalt_stream {int input; int sd; } ;


 struct v4l2_dv_timings cea1080p60 ;
 int query_dv_timings ;
 int v4l2_subdev_call (int ,int ,int ,struct v4l2_dv_timings*) ;
 int video ;
 struct cobalt_stream* video_drvdata (struct file*) ;

__attribute__((used)) static int cobalt_query_dv_timings(struct file *file, void *priv_fh,
        struct v4l2_dv_timings *timings)
{
 struct cobalt_stream *s = video_drvdata(file);

 if (s->input == 1) {
  *timings = cea1080p60;
  return 0;
 }
 return v4l2_subdev_call(s->sd,
   video, query_dv_timings, timings);
}
