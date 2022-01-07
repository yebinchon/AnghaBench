
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct v4l2_standard {unsigned int index; } ;
struct TYPE_2__ {int std; char* descr; } ;


 int EINVAL ;
 int ENODATA ;
 int V4L2_STD_NTSC ;
 int V4L2_STD_PAL ;
 int V4L2_STD_SECAM ;
 TYPE_1__* standards ;
 int v4l2_video_std_construct (struct v4l2_standard*,int,char const*) ;

int v4l_video_std_enumstd(struct v4l2_standard *vs, v4l2_std_id id)
{
 v4l2_std_id curr_id = 0;
 unsigned int index = vs->index, i, j = 0;
 const char *descr = "";



 if (id == 0)
  return -ENODATA;


 for (i = 0; i <= index && id; i++) {


  while ((id & standards[j].std) != standards[j].std)
   j++;
  curr_id = standards[j].std;
  descr = standards[j].descr;
  j++;
  if (curr_id == 0)
   break;
  if (curr_id != V4L2_STD_PAL &&
    curr_id != V4L2_STD_SECAM &&
    curr_id != V4L2_STD_NTSC)
   id &= ~curr_id;
 }
 if (i <= index)
  return -EINVAL;

 v4l2_video_std_construct(vs, curr_id, descr);
 return 0;
}
