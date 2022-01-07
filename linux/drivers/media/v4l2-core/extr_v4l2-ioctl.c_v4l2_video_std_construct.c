
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_standard {int id; int framelines; int name; int frameperiod; } ;


 int V4L2_STD_525_60 ;
 int strscpy (int ,char const*,int) ;
 int v4l2_video_std_frame_period (int,int *) ;

int v4l2_video_std_construct(struct v4l2_standard *vs,
        int id, const char *name)
{
 vs->id = id;
 v4l2_video_std_frame_period(id, &vs->frameperiod);
 vs->framelines = (id & V4L2_STD_525_60) ? 525 : 625;
 strscpy(vs->name, name, sizeof(vs->name));
 return 0;
}
