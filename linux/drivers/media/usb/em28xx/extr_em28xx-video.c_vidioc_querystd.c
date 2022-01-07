
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct em28xx {TYPE_1__* v4l2; } ;
struct TYPE_2__ {int v4l2_dev; } ;


 int querystd ;
 int v4l2_device_call_all (int *,int ,int ,int ,int *) ;
 int video ;
 struct em28xx* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_querystd(struct file *file, void *priv, v4l2_std_id *norm)
{
 struct em28xx *dev = video_drvdata(file);

 v4l2_device_call_all(&dev->v4l2->v4l2_dev, 0, video, querystd, norm);

 return 0;
}
