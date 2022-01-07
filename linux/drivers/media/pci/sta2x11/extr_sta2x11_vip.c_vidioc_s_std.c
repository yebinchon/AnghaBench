
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct sta2x11_vip {int std; int decoder; int format; } ;
struct file {int dummy; } ;


 int EIO ;
 int V4L2_STD_525_60 ;
 int V4L2_STD_ALL ;
 int V4L2_STD_UNKNOWN ;
 int * formats_50 ;
 int * formats_60 ;
 int querystd ;
 int s_std ;
 int v4l2_subdev_call (int ,int ,int ,...) ;
 int video ;
 struct sta2x11_vip* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_std(struct file *file, void *priv, v4l2_std_id std)
{
 struct sta2x11_vip *vip = video_drvdata(file);





 if (std == V4L2_STD_ALL) {
  v4l2_subdev_call(vip->decoder, video, querystd, &std);
  if (std == V4L2_STD_UNKNOWN)
   return -EIO;
 }

 if (vip->std != std) {
  vip->std = std;
  if (V4L2_STD_525_60 & std)
   vip->format = formats_60[0];
  else
   vip->format = formats_50[0];
 }

 return v4l2_subdev_call(vip->decoder, video, s_std, std);
}
