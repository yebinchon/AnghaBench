
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_input {size_t index; int name; scalar_t__ std; int type; } ;
struct file {int dummy; } ;
struct ceu_subdev {TYPE_1__* v4l2_sd; } ;
struct ceu_device {size_t num_sd; struct ceu_subdev* subdevs; } ;
struct TYPE_2__ {char* name; } ;


 int EINVAL ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int snprintf (int ,int,char*,size_t,char*) ;
 struct ceu_device* video_drvdata (struct file*) ;

__attribute__((used)) static int ceu_enum_input(struct file *file, void *priv,
     struct v4l2_input *inp)
{
 struct ceu_device *ceudev = video_drvdata(file);
 struct ceu_subdev *ceusd;

 if (inp->index >= ceudev->num_sd)
  return -EINVAL;

 ceusd = &ceudev->subdevs[inp->index];

 inp->type = V4L2_INPUT_TYPE_CAMERA;
 inp->std = 0;
 snprintf(inp->name, sizeof(inp->name), "Camera%u: %s",
   inp->index, ceusd->v4l2_sd->name);

 return 0;
}
