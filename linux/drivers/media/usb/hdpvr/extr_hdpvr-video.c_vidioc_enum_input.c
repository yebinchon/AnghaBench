
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_input {unsigned int index; int audioset; int std; int capabilities; int name; int type; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int HDPVR_RCA_BACK ;
 int HDPVR_RCA_FRONT ;
 int HDPVR_SPDIF ;
 unsigned int HDPVR_VIDEO_INPUTS ;
 int V4L2_INPUT_TYPE_CAMERA ;
 int V4L2_IN_CAP_DV_TIMINGS ;
 int V4L2_IN_CAP_STD ;
 int V4L2_STD_ALL ;
 int * iname ;
 int strscpy (int ,int ,int) ;

__attribute__((used)) static int vidioc_enum_input(struct file *file, void *_fh, struct v4l2_input *i)
{
 unsigned int n;

 n = i->index;
 if (n >= HDPVR_VIDEO_INPUTS)
  return -EINVAL;

 i->type = V4L2_INPUT_TYPE_CAMERA;

 strscpy(i->name, iname[n], sizeof(i->name));

 i->audioset = 1<<HDPVR_RCA_FRONT | 1<<HDPVR_RCA_BACK | 1<<HDPVR_SPDIF;

 i->capabilities = n ? V4L2_IN_CAP_STD : V4L2_IN_CAP_DV_TIMINGS;
 i->std = n ? V4L2_STD_ALL : 0;

 return 0;
}
