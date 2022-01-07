
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {int index; int status; int capabilities; int type; int name; } ;
struct file {int dummy; } ;
struct cobalt_stream {int video_channel; int sd; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_IN_CAP_DV_TIMINGS ;
 int g_input_status ;
 int snprintf (int ,int,char*,int) ;
 int v4l2_subdev_call (int ,int ,int ,int *) ;
 int video ;
 struct cobalt_stream* video_drvdata (struct file*) ;

__attribute__((used)) static int cobalt_enum_input(struct file *file, void *priv_fh,
     struct v4l2_input *inp)
{
 struct cobalt_stream *s = video_drvdata(file);

 if (inp->index > 1)
  return -EINVAL;
 if (inp->index == 0)
  snprintf(inp->name, sizeof(inp->name),
    "HDMI-%d", s->video_channel);
 else
  snprintf(inp->name, sizeof(inp->name),
    "Generator-%d", s->video_channel);
 inp->type = V4L2_INPUT_TYPE_CAMERA;
 inp->capabilities = V4L2_IN_CAP_DV_TIMINGS;
 if (inp->index == 1)
  return 0;
 return v4l2_subdev_call(s->sd,
   video, g_input_status, &inp->status);
}
