
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {size_t index; } ;
struct file {int dummy; } ;


 int EINVAL ;
 size_t KNC1_INPUTS ;
 int dprintk (int,char*,size_t) ;
 int * knc1_inputs ;
 int memcpy (struct v4l2_input*,int *,int) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *fh, struct v4l2_input *i)
{
 dprintk(1, "VIDIOC_ENUMINPUT %d\n", i->index);
 if (i->index >= KNC1_INPUTS)
  return -EINVAL;
 memcpy(i, &knc1_inputs[i->index], sizeof(struct v4l2_input));
 return 0;
}
