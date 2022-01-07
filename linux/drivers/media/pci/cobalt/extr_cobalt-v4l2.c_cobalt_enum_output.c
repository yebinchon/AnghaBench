
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_output {int index; int capabilities; int type; int name; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_OUTPUT_TYPE_ANALOG ;
 int V4L2_OUT_CAP_DV_TIMINGS ;
 int snprintf (int ,int,char*,int) ;

__attribute__((used)) static int cobalt_enum_output(struct file *file, void *priv_fh,
     struct v4l2_output *out)
{
 if (out->index)
  return -EINVAL;
 snprintf(out->name, sizeof(out->name), "HDMI-%d", out->index);
 out->type = V4L2_OUTPUT_TYPE_ANALOG;
 out->capabilities = V4L2_OUT_CAP_DV_TIMINGS;
 return 0;
}
