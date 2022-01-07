
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_output {int type; int name; scalar_t__ index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int V4L2_OUTPUT_TYPE_ANALOGVGAOVERLAY ;
 int snprintf (int ,int,char*) ;

__attribute__((used)) static int vidioc_enum_output(struct file *file, void *priv_fh,
         struct v4l2_output *out)
{
 if (out->index)
  return -EINVAL;
 snprintf(out->name, sizeof(out->name), "Overlay");
 out->type = V4L2_OUTPUT_TYPE_ANALOGVGAOVERLAY;
 return 0;
}
