
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct v4l2_edid {int pad; } ;
struct file {int dummy; } ;
struct cobalt_stream {int sd; scalar_t__ is_output; } ;


 int EINVAL ;
 int get_edid ;
 int v4l2_subdev_call (int ,int,int ,struct v4l2_edid*) ;
 struct cobalt_stream* video_drvdata (struct file*) ;

__attribute__((used)) static int cobalt_g_edid(struct file *file, void *fh, struct v4l2_edid *edid)
{
 struct cobalt_stream *s = video_drvdata(file);
 u32 pad = edid->pad;
 int ret;

 if (edid->pad >= (s->is_output ? 1 : 2))
  return -EINVAL;
 edid->pad = 0;
 ret = v4l2_subdev_call(s->sd, pad, get_edid, edid);
 edid->pad = pad;
 return ret;
}
