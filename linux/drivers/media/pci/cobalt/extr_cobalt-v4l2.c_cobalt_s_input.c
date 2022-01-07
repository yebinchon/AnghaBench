
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cobalt_stream {unsigned int input; int sd; int q; } ;


 int ADV76XX_PAD_HDMI_PORT_A ;
 int EBUSY ;
 int EINVAL ;
 int cobalt_enable_input (struct cobalt_stream*) ;
 int s_routing ;
 int v4l2_subdev_call (int ,int ,int ,int ,int ,int ) ;
 scalar_t__ vb2_is_busy (int *) ;
 int video ;
 struct cobalt_stream* video_drvdata (struct file*) ;

__attribute__((used)) static int cobalt_s_input(struct file *file, void *priv_fh, unsigned int i)
{
 struct cobalt_stream *s = video_drvdata(file);

 if (i >= 2)
  return -EINVAL;
 if (vb2_is_busy(&s->q))
  return -EBUSY;
 s->input = i;

 cobalt_enable_input(s);

 if (s->input == 1)
  return 0;

 return v4l2_subdev_call(s->sd, video, s_routing,
   ADV76XX_PAD_HDMI_PORT_A, 0, 0);
}
