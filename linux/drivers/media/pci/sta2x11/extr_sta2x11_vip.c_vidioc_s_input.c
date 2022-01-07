
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta2x11_vip {unsigned int input; int decoder; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int s_routing ;
 int v4l2_subdev_call (int ,int ,int ,unsigned int,int ,int ) ;
 int video ;
 struct sta2x11_vip* video_drvdata (struct file*) ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *priv, unsigned int i)
{
 struct sta2x11_vip *vip = video_drvdata(file);
 int ret;

 if (i > 1)
  return -EINVAL;
 ret = v4l2_subdev_call(vip->decoder, video, s_routing, i, 0, 0);

 if (!ret)
  vip->input = i;

 return 0;
}
