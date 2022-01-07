
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct solo_dev {scalar_t__ video_type; } ;
struct file {int dummy; } ;


 scalar_t__ SOLO_VO_FMT_TYPE_NTSC ;
 int V4L2_STD_NTSC_M ;
 int V4L2_STD_PAL ;
 struct solo_dev* video_drvdata (struct file*) ;

__attribute__((used)) static int solo_g_std(struct file *file, void *priv, v4l2_std_id *i)
{
 struct solo_dev *solo_dev = video_drvdata(file);

 if (solo_dev->video_type == SOLO_VO_FMT_TYPE_NTSC)
  *i = V4L2_STD_NTSC_M;
 else
  *i = V4L2_STD_PAL;
 return 0;
}
