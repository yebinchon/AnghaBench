
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v4l2_std_id ;
struct viu_fh {int dev; } ;
struct file {int dummy; } ;


 int decoder_call (int ,int ,int ,int *) ;
 int querystd ;
 int video ;

__attribute__((used)) static int vidioc_querystd(struct file *file, void *priv, v4l2_std_id *std_id)
{
 struct viu_fh *fh = priv;

 decoder_call(fh->dev, video, querystd, std_id);
 return 0;
}
