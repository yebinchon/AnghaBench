
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct sta2x11_vip {int decoder; } ;
struct file {int dummy; } ;


 int querystd ;
 int v4l2_subdev_call (int ,int ,int ,int *) ;
 int video ;
 struct sta2x11_vip* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querystd(struct file *file, void *priv, v4l2_std_id *std)
{
 struct sta2x11_vip *vip = video_drvdata(file);

 return v4l2_subdev_call(vip->decoder, video, querystd, std);
}
