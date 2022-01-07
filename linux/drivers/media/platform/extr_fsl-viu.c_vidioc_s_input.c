
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viu_fh {int dev; } ;
struct file {int dummy; } ;


 int EINVAL ;
 int decoder_call (int ,int ,int ,unsigned int,int ,int ) ;
 int s_routing ;
 int video ;

__attribute__((used)) static int vidioc_s_input(struct file *file, void *priv, unsigned int i)
{
 struct viu_fh *fh = priv;

 if (i)
  return -EINVAL;

 decoder_call(fh->dev, video, s_routing, i, 0, 0);
 return 0;
}
